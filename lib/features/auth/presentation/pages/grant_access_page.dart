import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/widgets/loading_view.dart';

class GrantAccessPage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return GrantAccessView(
      jwt: jwt,
      userId: userId,
      email: email,
    );
  }
}

class GrantAccessView extends StatelessWidget {
  final String jwt;
  final String userId;
  final String email;

  const GrantAccessView({
    super.key,
    required this.jwt,
    required this.userId,
    required this.email,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthAuthenticated) {
            context.go('/notices');
          }
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                Icon(
                  Icons.security,
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
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return FilledButton(
                      onPressed: state is AuthLoading
                          ? null
                          : () => _grantAccess(context),
                      child: state is AuthLoading
                          ? SizedBox(
                              height: 20,
                              width: 20,
                              child: LoadingView(
                                fullScreen: false,
                                size: 20,
                                strokeWidth: 2,
                                padding: EdgeInsets.zero,
                              ),
                            )
                          : const Text('Get Started'),
                    );
                  },
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
      ),
    );
  }

  void _grantAccess(BuildContext context) {
    // TODO: Request notification permissions and upload expo token
    // For now, just navigate to notices since user is already authenticated
    context.go('/notices');
  }
}
