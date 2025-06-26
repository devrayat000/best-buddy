import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/auth/auth_service.dart';
import '../../../../core/services/analytics_service.dart';
import '../forms/login_form.dart';
import '../widgets/auth_form_field.dart';
import '../widgets/auth_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginForm _loginForm;
  final AuthService _authService = AuthService();
  bool _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _loginForm = LoginForm();
    
    // Log screen visit
    AnalyticsService.logScreenView('login_screen');
    
    // Listen to auth state changes
    _authService.authStateChanges.listen((user) {
      if (user != null && mounted) {
        context.go('/notices');
      }
    });
  }

  @override
  void dispose() {
    _loginForm.dispose();
    super.dispose();
  }

  Future<void> _signIn() async {
    if (!_loginForm.form.valid) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      await _authService.signInWithEmailAndPassword(
        email: _loginForm.email!,
        password: _loginForm.password!,
      );
      
      // Log successful login
      AnalyticsService.logLogin('email');
      
      // Navigation will be handled by the auth state listener
    } catch (e) {
      // Log login failure
      AnalyticsService.logError('login_failed', e.toString());
      
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
      body: SafeArea(
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
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
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
                const SizedBox(height: 48),

                // Student ID Field
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
                        Icon(Icons.error_outline, color: Colors.red[600], size: 20),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            _errorMessage!,
                            style: TextStyle(color: Colors.red[800], fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),

                const SizedBox(height: 16),

                // Login Button
                AuthButton(
                  text: 'Sign In',
                  isLoading: _isLoading,
                  onPressed: _signIn,
                ),
                const SizedBox(height: 24),

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
    );
  }
}
