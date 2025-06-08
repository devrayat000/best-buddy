import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';

/// Service to monitor network connectivity status
class ConnectivityService {
  static final ConnectivityService _instance = ConnectivityService._internal();
  factory ConnectivityService() => _instance;
  ConnectivityService._internal();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  /// Stream controller for connectivity status
  final StreamController<bool> _connectivityController =
      StreamController<bool>.broadcast();

  /// Current connectivity status
  bool _isConnected = true;

  /// Stream of connectivity status (true = connected, false = disconnected)
  Stream<bool> get connectivityStream => _connectivityController.stream;

  /// Current connectivity status
  bool get isConnected => _isConnected;

  /// Initialize the connectivity service
  Future<void> initialize() async {
    try {
      // Check initial connectivity status
      final result = await _connectivity.checkConnectivity();
      _updateConnectivityStatus(result);

      // Listen for connectivity changes
      _connectivitySubscription =
          _connectivity.onConnectivityChanged.listen(_updateConnectivityStatus);

      log('🌐 ConnectivityService initialized');
    } catch (e) {
      log('❌ Failed to initialize ConnectivityService: $e');
      // Assume connected if we can't check
      _isConnected = true;
    }
  }

  /// Update connectivity status based on connectivity result
  void _updateConnectivityStatus(List<ConnectivityResult> results) {
    final bool wasConnected = _isConnected;

    // Check if any of the connections are active
    _isConnected = results.any((result) => result != ConnectivityResult.none);

    // Log connectivity changes
    if (wasConnected != _isConnected) {
      log(_isConnected
          ? '🌐 Network connectivity restored'
          : '📡 Network connectivity lost');
    }

    // Notify listeners
    _connectivityController.add(_isConnected);
  }

  /// Check current connectivity status
  Future<bool> checkConnectivity() async {
    try {
      final result = await _connectivity.checkConnectivity();
      _updateConnectivityStatus(result);
      return _isConnected;
    } catch (e) {
      log('❌ Failed to check connectivity: $e');
      return _isConnected; // Return cached status
    }
  }

  /// Dispose resources
  void dispose() {
    _connectivitySubscription.cancel();
    _connectivityController.close();
  }
}
