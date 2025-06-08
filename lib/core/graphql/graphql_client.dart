import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import '../config/backend_config.dart';
import '../storage/storage_service.dart';
import 'connectivity_link.dart';

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
  final httpLink = HttpLink(BackendConfig.graphqlEndpoint);

  final authLink = AuthLink(
    getToken: () async {
      final token = await storageService.getToken();
      // if (token != null) {
      log('Using token: $token');
      // }
      return token != null ? 'Bearer $token' : null;
    },
  );

  // Add connectivity-aware link to handle network errors
  final connectivityLink = ConnectivityLink();

  // Optionally add a logging link for debugging
  final logLink = LogLink();

  // Chain the links: auth -> connectivity -> logging -> http
  final link = Link.from([authLink, connectivityLink, logLink, httpLink]);
  final client = GraphQLClient(
    link: link,
    cache: GraphQLCache(store: InMemoryStore()),
  );

  return ValueNotifier(client);
}
