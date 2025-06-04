import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import '../storage/storage_service.dart';

// Use appropriate endpoint based on platform
String get _endpoint {
  const envUrl = String.fromEnvironment('API_URL');
  if (envUrl.isNotEmpty) return envUrl;

  // For development, use localhost for desktop/web, and appropriate IP for mobile
  return 'http://localhost:3000/api/graphql';
}

class LogLink extends Link {
  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    log('🚀 GraphQL Request:');
    log('  Query: ${request.operation.operationName ?? 'Unknown'}');
    log('  Variables: ${request.variables}');
    log('  Document: ${request.operation.document}');

    return forward!(request).map((response) {
      log('📥 GraphQL Response:');
      log('  Data: ${response.data}');
      if (response.errors != null && response.errors!.isNotEmpty) {
        log('  Errors: ${response.errors}');
      }
      log('  Context: ${response.context}');
      return response;
    });
  }
}

ValueNotifier<GraphQLClient> createGraphQLClient(
  StorageService storageService,
) {
  final httpLink = HttpLink(_endpoint);

  final authLink = AuthLink(
    getToken: () async {
      final token = await storageService.getToken();
      // if (token != null) {
      log('Using token: $token');
      // }
      return token != null ? 'Bearer $token' : null;
    },
  );

  // Optionally add a logging link for debugging
  final logLink = LogLink();

  final link = Link.from([authLink, logLink, httpLink]);
  final client = GraphQLClient(
    link: link,
    cache: GraphQLCache(store: InMemoryStore()),
  );

  return ValueNotifier(client);
}
