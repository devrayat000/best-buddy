import 'dart:async';
import 'dart:developer';

import 'package:graphql/client.dart';
import '../services/connectivity_service.dart';

/// Custom GraphQL Link that handles connectivity issues
class ConnectivityLink extends Link {
  final ConnectivityService _connectivityService;

  ConnectivityLink({ConnectivityService? connectivityService})
      : _connectivityService = connectivityService ?? ConnectivityService();
  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    // Check connectivity before making the request
    final isConnected = await _connectivityService.checkConnectivity();
    if (!isConnected) {
      log('🚫 No network connectivity - failing request');
      yield Response(
        data: null,
        errors: const [
          GraphQLError(
            message: 'No internet connection',
            extensions: <String, dynamic>{
              'code': 'NETWORK_ERROR',
              'type': 'connectivity',
            },
          ),
        ],
        context: request.context,
        response: const <String, dynamic>{},
      );
      return;
    }

    try {
      // Forward the request to the next link
      await for (final response in forward!(request)) {
        // Check if the response has errors that might be network-related
        if (response.errors != null && response.errors!.isNotEmpty) {
          // Check if any error might be network-related
          final hasNetworkKeywords = response.errors!
              .any((error) => _containsNetworkKeywords(error.message));

          if (hasNetworkKeywords) {
            log('🌐 Network error detected, checking connectivity...');

            // Double-check connectivity
            final stillConnected =
                await _connectivityService.checkConnectivity();
            if (!stillConnected) {
              log('🚫 Connectivity lost during request');
              yield Response(
                response: response.response,
                data: null,
                errors: const [
                  GraphQLError(
                    message: 'Connection lost',
                    extensions: <String, dynamic>{
                      'code': 'NETWORK_ERROR',
                      'type': 'connectivity',
                    },
                  ),
                ],
                context: response.context,
              );
              return;
            }
          }
        }

        yield response;
      }
    } catch (error) {
      log('❌ ConnectivityLink error: $error');

      // Check if it's a network-related error
      if (_isNetworkErrorException(error)) {
        final isConnected = await _connectivityService.checkConnectivity();
        if (!isConnected) {
          yield Response(
            response: const <String, dynamic>{},
            data: null,
            errors: const [
              GraphQLError(
                message: 'No internet connection',
                extensions: <String, dynamic>{
                  'code': 'NETWORK_ERROR',
                  'type': 'connectivity',
                },
              ),
            ],
            context: request.context,
          );
          return;
        }
      }

      // Re-throw if not a connectivity issue
      rethrow;
    }
  }

  /// Check if a string contains network-related keywords
  bool _containsNetworkKeywords(String text) {
    final lowerText = text.toLowerCase();
    return lowerText.contains('network') ||
        lowerText.contains('connection') ||
        lowerText.contains('timeout') ||
        lowerText.contains('unreachable') ||
        lowerText.contains('socket') ||
        lowerText.contains('host') ||
        lowerText.contains('dns') ||
        lowerText.contains('connectivity');
  }

  /// Check if a raw exception is network-related
  bool _isNetworkErrorException(dynamic error) {
    final errorString = error.toString().toLowerCase();
    return errorString.contains('network') ||
        errorString.contains('connection') ||
        errorString.contains('timeout') ||
        errorString.contains('unreachable') ||
        errorString.contains('socket') ||
        errorString.contains('host');
  }
}
