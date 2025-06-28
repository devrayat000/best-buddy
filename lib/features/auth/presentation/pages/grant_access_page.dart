import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GrantAccessPage extends StatefulWidget {
  final String jwt;
  final String userId;
  final String email;

  const GrantAccessPage({
    super.key,
    required this.jwt,
    required this.userId,
    required this.email,
  });

  @override
  State<GrantAccessPage> createState() => _GrantAccessPageState();
}

class _GrantAccessPageState extends State<GrantAccessPage> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Spacer(),
              Icon(
                Icons.notifications_active,
                size: 80,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 32),
              Text(
                'Grant Access',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'Allow Best Buddy to send you notifications about important updates and announcements.',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              FilledButton(
                onPressed: _isLoading ? null : _grantAccess,
                child: _isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Get Started'),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () => context.go('/notices'),
                child: const Text('Skip for now'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _grantAccess() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // Process the JWT token and grant access
      // This is a placeholder implementation
      await Future.delayed(const Duration(seconds: 2));
      
      if (mounted) {
        context.go('/notices');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
}
