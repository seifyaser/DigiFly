import 'package:digify/data/auth_service.dart';
import 'package:digify/presentation/Login_screen.dart/widgets/LoginForm.dart';
import 'package:digify/widgets/AuthFooter.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool _obscurePassword = true;
  bool _rememberMe = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      bool isLoggedIn = await _authService.signIn(
        context,
        emailController.text.trim(),
        passwordController.text,
      );
      if (isLoggedIn) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Welcome back!'),
            backgroundColor: Colors.green,
            behavior: SnackBarBehavior.floating,
          ),
        );
        Navigator.pushReplacementNamed(context, '/Navigation-Bar');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid email or password.'),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            duration: Duration(seconds: 4),
          ),
        );
      }
    }
  }

  void _handleForgotPassword(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Password reset link sent to your email'),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _handleSignUp(BuildContext context) {
    _authService.signUp(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            buildLoginForm(
              formKey: formKey,
              emailController: emailController,
              passwordController: passwordController,
              obscurePassword: _obscurePassword,
              rememberMe: _rememberMe,
              onToggleObscure: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
              onRememberMeChanged: (value) {
                setState(() {
                  _rememberMe = value ?? false;
                });
              },
              onForgotPassword: () => _handleForgotPassword(context),
              onLogin: () => _handleLogin(context),
            ),

            const SizedBox(height: 50),
            AuthFooter(
              questionText: "Don't have an account? ",
              actionText: "Sign up",
              onTap: () => _handleSignUp(context),
            ),
          ],
        ),
      ),
    );
  }
}
