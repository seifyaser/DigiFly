import 'package:digify/data/auth_service.dart';
import 'package:digify/presentation/signUp_screen/widgets/RegisterForm.dart';
import 'package:flutter/material.dart';
import 'package:digify/widgets/AuthFooter.dart';
import 'package:digify/generated/l10n.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();  
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  bool _isLoading = false;

  void _handleSignUp() async {
    if (!formKey.currentState!.validate()) return;

    final email = emailController.text.trim();
    final username = nameController.text.trim();
    final password = passwordController.text.trim();

    setState(() {
      _isLoading = true;
    });

    try {
      await AuthService().register(username, email, password);
      _showSnackBar(S.of(context).authSignupSuccessMessage);
      Navigator.pushReplacementNamed(context, '/Navigation-Bar');
    } catch (e) {
      _showSnackBar(e.toString());
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _showSnackBar(String message) {
    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), behavior: SnackBarBehavior.floating),
    );
  }

  void _togglePassword() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleConfirmPassword() {
    setState(() {
      _obscureConfirmPassword = !_obscureConfirmPassword;
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              buildRegisterForm(
                formKey: formKey,
                nameController: nameController,
                emailController: emailController,
                passwordController: passwordController,
                confirmPasswordController: confirmPasswordController,
                obscurePassword: _obscurePassword,
                obscureConfirmPassword: _obscureConfirmPassword,
                isLoading: _isLoading,
                onTogglePassword: _togglePassword,
                onToggleConfirmPassword: _toggleConfirmPassword,
                onHandleSignUp: _handleSignUp, context: context,
              ),
              const SizedBox(height: 100),
              AuthFooter(
                questionText: S.of(context).authSignupAlreadyHaveAccount,
                actionText: S.of(context).authSignupLogin,
                onTap: () {
                  Navigator.pushNamed(context, '/login-screen');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
