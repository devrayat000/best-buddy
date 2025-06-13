import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../../../core/auth/biometric_service.dart';
import '../../../../core/services/analytics_service.dart';
import '../../data/graphql/auth_mutations.graphql.dart';
import '../forms/login_form.dart';
import '../widgets/auth_form_field.dart';
import '../widgets/auth_button.dart';
import '../widgets/biometric_login_widget.dart';
import '../dialogs/biometric_setup_dialog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginForm _loginForm;

  @override
  void initState() {
    super.initState();
    _loginForm = LoginForm();
  }

  @override
  void dispose() {
    _loginForm.dispose();
    super.dispose();
  }

  Future<void> _checkBiometricSetup() async {
    // Small delay to allow navigation to complete
    await Future.delayed(const Duration(milliseconds: 500));

    if (!mounted) return;

    final shouldPrompt = await BiometricService.shouldPromptForBiometricSetup();
    if (shouldPrompt && mounted) {
      showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (context) => const BiometricSetupDialog(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<AuthCubit>(),
      child: Scaffold(
        body: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthAuthenticated) {
              context.go('/notices');
            } else if (state is AuthError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.red,
                ),
              );
            } else if (state is AuthSessionExpired) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content:
                      Text('Your session has expired. Please log in again.'),
                  backgroundColor: Colors.orange,
                ),
              );
            }
          },
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: ReactiveForm(
                formGroup: _loginForm.form,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Spacer(),
                    // Logo and Title
                    const Icon(
                      Icons.school,
                      size: 80,
                      color: Colors.blue,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Study Buddy',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Welcome back! Please sign in to continue.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.grey[600],
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 48), // Student ID Field
                    const AuthFormField(
                      controlName: LoginForm.emailControlName,
                      labelText: 'Student ID',
                      keyboardType: TextInputType.text,
                      prefixIcon: Icons.person_outlined,
                    ),
                    const SizedBox(height: 16),

                    // Password Field
                    const AuthFormField(
                      controlName: LoginForm.passwordControlName,
                      labelText: 'Password',
                      obscureText: true,
                      prefixIcon: Icons.lock_outline,
                    ),
                    const SizedBox(
                        height: 32), // Login Button with GraphQL Mutation
                    Mutation$AuthenticateUserWithPassword$Widget(
                      options:
                          WidgetOptions$Mutation$AuthenticateUserWithPassword(
                        onCompleted: (data, result) {
                          if (result?.authenticateUserWithPassword != null) {
                            final authResult = result!
                                .authenticateUserWithPassword!; // Handle success case
                            if (authResult
                                is Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordSuccess) {
                              final user = authResult.item;
                              final token = authResult.sessionToken;

                              // Track successful login
                              AnalyticsService.logLogin('email_password');
                              AnalyticsService.setUserId(user.id);
                              AnalyticsService.setUserProperty(
                                  'user_role', user.role?.name ?? 'student');

                              context.read<AuthCubit>().login(
                                    token: token,
                                    userId: user.id,
                                    email: user.email,
                                    name: user.name,
                                    role: user.role?.name,
                                  );

                              // Check if we should prompt for biometric setup
                              _checkBiometricSetup();
                            } // Handle failure case
                            else if (authResult
                                is Mutation$AuthenticateUserWithPassword$authenticateUserWithPassword$$UserAuthenticationWithPasswordFailure) {
                              // Track failed login
                              AnalyticsService.logError(
                                  'login_failed', authResult.message,
                                  screen: 'login');

                              context
                                  .read<AuthCubit>()
                                  .setError(authResult.message);
                            } else {
                              context
                                  .read<AuthCubit>()
                                  .setError('Unknown authentication error');
                            }
                          }
                        },
                        onError: (error) {
                          context
                              .read<AuthCubit>()
                              .setError(error?.toString() ?? 'Login failed');
                        },
                      ),
                      builder: (runMutation, result) {
                        return BlocBuilder<AuthCubit, AuthState>(
                          builder: (context, state) {
                            final isLoading = state is AuthLoading ||
                                (result?.isLoading ?? false);

                            return AuthButton(
                              text: 'Sign In',
                              isLoading: isLoading,
                              onPressed: () {
                                if (_loginForm.form.valid) {
                                  context.read<AuthCubit>().setLoading();
                                  runMutation(
                                    Variables$Mutation$AuthenticateUserWithPassword(
                                      email: _loginForm.email!,
                                      password: _loginForm.password!,
                                    ),
                                  );
                                }
                              },
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 16),

                    // Biometric Login Option
                    const BiometricLoginWidget(),

                    // Register Link
                    TextButton(
                      onPressed: () => context.push('/register'),
                      child: RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            const TextSpan(text: "Don't have an account? "),
                            TextSpan(
                              text: 'Sign up',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
