import 'package:best_buddy_flutter/core/graphql/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/auth/auth_cubit.dart';
import '../../data/graphql/auth_mutations.graphql.dart';
import '../forms/register_form.dart';
import '../widgets/auth_form_field.dart';
import '../widgets/auth_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final RegisterForm _registerForm;

  @override
  void initState() {
    super.initState();
    _registerForm = RegisterForm();
  }

  @override
  void dispose() {
    _registerForm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<AuthCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Account'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
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
            }
          },
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: ReactiveForm(
                formGroup: _registerForm.form,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 24),

                      // Title
                      Text(
                        'Join Study Buddy',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Create your account to get started',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.grey[600],
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 32),

                      // Name Field
                      const AuthFormField(
                        controlName: RegisterForm.nameControlName,
                        labelText: 'Full Name',
                        keyboardType: TextInputType.name,
                        prefixIcon: Icons.person_outline,
                      ),
                      const SizedBox(height: 16),

                      // Email Field
                      const AuthFormField(
                        controlName: RegisterForm.emailControlName,
                        labelText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Icons.email_outlined,
                      ),
                      const SizedBox(height: 16),

                      // Password Field
                      const AuthFormField(
                        controlName: RegisterForm.passwordControlName,
                        labelText: 'Password',
                        obscureText: true,
                        prefixIcon: Icons.lock_outline,
                      ),
                      const SizedBox(height: 16),

                      // Confirm Password Field
                      const AuthFormField(
                        controlName: RegisterForm.confirmPasswordControlName,
                        labelText: 'Confirm Password',
                        obscureText: true,
                        prefixIcon: Icons.lock_outline,
                      ),
                      const SizedBox(height: 32),

                      // Register Button with GraphQL Mutation
                      Mutation$CreateUser$Widget(
                        options: WidgetOptions$Mutation$CreateUser(
                          onCompleted: (data, result) {
                            if (result?.createUser != null) {
                              // After successful registration, automatically log in
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Account created successfully! Please log in.'),
                                  backgroundColor: Colors.green,
                                ),
                              );

                              // Navigate to login page
                              context.go('/login');
                            }
                          },
                          onError: (error) {
                            context.read<AuthCubit>().setError(
                                error?.toString() ?? 'Registration failed');
                          },
                        ),
                        builder: (runMutation, result) {
                          return BlocBuilder<AuthCubit, AuthState>(
                            builder: (context, state) {
                              final isLoading = state is AuthLoading ||
                                  (result?.isLoading ?? false);

                              return AuthButton(
                                text: 'Create Account',
                                isLoading: isLoading,
                                onPressed: () {
                                  if (_registerForm.form.valid) {
                                    context.read<AuthCubit>().setLoading();
                                    runMutation(
                                      Variables$Mutation$CreateUser(
                                        data: Input$UserCreateInput(
                                          name: _registerForm.name!,
                                          email: _registerForm.email!,
                                          password: _registerForm.password!,
                                          role: Enum$UserRoleType.user,
                                        ),
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

                      // Login Link
                      TextButton(
                        onPressed: () => context.pop(),
                        child: RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyMedium,
                            children: [
                              const TextSpan(text: 'Already have an account? '),
                              TextSpan(
                                text: 'Sign in',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
