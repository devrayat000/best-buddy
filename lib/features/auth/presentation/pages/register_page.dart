import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/auth/auth_service.dart';
import '../../../../core/models/user_model.dart';
import '../../../../core/services/analytics_service.dart';
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
  final AuthService _authService = AuthService();
  bool _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _registerForm = RegisterForm();

    // Log screen visit
    AnalyticsService.logScreenView('register_screen');

    // Listen to auth state changes
    _authService.authStateChanges.listen((user) {
      if (user != null && mounted) {
        context.go('/notices');
      }
    });
  }

  @override
  void dispose() {
    _registerForm.dispose();
    super.dispose();
  }

  Future<void> _signUp() async {
    if (!_registerForm.form.valid) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      await _authService.signUpWithEmailAndPassword(
        email: _registerForm.email!,
        password: _registerForm.password!,
        name: _registerForm.name!,
        role: _registerForm.role == 'cr' ? UserRole.cr : UserRole.student,
      );

      // Log successful registration
      AnalyticsService.logSignUp('email');
      AnalyticsService.logCustomEvent('user_registered', {
        'role': _registerForm.role ?? 'unknown',
      });

      // Navigation will be handled by the auth state listener
    } catch (e) {
      // Log registration failure
      AnalyticsService.logError('registration_failed', e.toString());

      if (mounted) {
        setState(() {
          _errorMessage = e.toString();
        });
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
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
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
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
                  const SizedBox(height: 16),

                  // Error message
                  if (_errorMessage != null)
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.red[200]!),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.error_outline,
                              color: Colors.red[600], size: 20),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              _errorMessage!,
                              style: TextStyle(
                                  color: Colors.red[800], fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),

                  const SizedBox(height: 16),

                  // Register Button
                  AuthButton(
                    text: 'Create Account',
                    isLoading: _isLoading,
                    onPressed: _signUp,
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
    );
  }
}
