import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../services/connectivity_service.dart';

/// A banner widget that shows network connectivity status
class NetworkStatusBanner extends StatefulWidget {
  /// Child widget to display
  final Widget child;

  /// Whether to show the banner only when disconnected (default: true)
  /// If false, will show status for both connected and disconnected states
  final bool showOnlyWhenDisconnected;

  /// Duration to show connected status before hiding (default: 2 seconds)
  final Duration connectedStatusDuration;

  const NetworkStatusBanner({
    super.key,
    required this.child,
    this.showOnlyWhenDisconnected = true,
    this.connectedStatusDuration = const Duration(seconds: 2),
  });

  @override
  State<NetworkStatusBanner> createState() => _NetworkStatusBannerState();
}

class _NetworkStatusBannerState extends State<NetworkStatusBanner>
    with TickerProviderStateMixin {
  late final ConnectivityService _connectivityService;
  late final AnimationController _animationController;
  late final Animation<double> _slideAnimation;

  bool _isConnected = true;
  bool _shouldShowBanner = false;

  @override
  void initState() {
    super.initState();

    _connectivityService = GetIt.instance<ConnectivityService>();
    _isConnected = _connectivityService.isConnected;

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _slideAnimation = Tween<double>(
      begin: -1.0,
      end: 0.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    // Listen to connectivity changes
    _connectivityService.connectivityStream.listen(_onConnectivityChanged);

    // Set initial banner state
    _updateBannerVisibility();
  }

  void _onConnectivityChanged(bool isConnected) {
    if (!mounted) return;

    final wasConnected = _isConnected;
    _isConnected = isConnected;

    // Show banner when connection status changes
    if (wasConnected != isConnected) {
      _updateBannerVisibility();

      // If connection was restored, auto-hide after duration
      if (isConnected && !widget.showOnlyWhenDisconnected) {
        Future.delayed(widget.connectedStatusDuration, () {
          if (mounted && _isConnected) {
            _hideBanner();
          }
        });
      }
    }
  }

  void _updateBannerVisibility() {
    final shouldShow = widget.showOnlyWhenDisconnected
        ? !_isConnected
        : true; // Always show if not restricted to disconnected only

    if (shouldShow != _shouldShowBanner) {
      setState(() {
        _shouldShowBanner = shouldShow;
      });

      if (_shouldShowBanner) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    }
  }

  void _hideBanner() {
    if (mounted && _shouldShowBanner) {
      setState(() {
        _shouldShowBanner = false;
      });
      _animationController.reverse();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedBuilder(
          animation: _slideAnimation,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _slideAnimation.value * 32),
              child:
                  _shouldShowBanner ? _buildBanner() : const SizedBox.shrink(),
            );
          },
        ),
        Expanded(child: widget.child),
      ],
    );
  }

  Widget _buildBanner() {
    final theme = Theme.of(context);
    final isConnected = _isConnected;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: isConnected ? Colors.green.shade600 : Colors.red.shade600,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(26),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SafeArea(
        bottom: false,
        child: Row(
          children: [
            Icon(
              isConnected ? Icons.wifi : Icons.wifi_off,
              color: Colors.white,
              size: 18,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                isConnected
                    ? 'Connected to internet'
                    : 'No internet connection',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (!isConnected && widget.showOnlyWhenDisconnected)
              SizedBox(
                height: 28,
                child: TextButton(
                  onPressed: () async {
                    await _connectivityService.checkConnectivity();
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    'Retry',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
