import 'package:flutter/material.dart';
import 'package:digify/presentation/Login_screen.dart/widgets/Remember_forget_row.dart';
import 'package:digify/theme/appTheme.dart';
import 'package:digify/widgets/AuthHeader.dart';
import 'package:digify/widgets/CustomButton.dart';
import 'package:digify/widgets/CustomTextField.dart';

Widget buildLoginForm({
  required GlobalKey<FormState> formKey,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  required bool obscurePassword,
  required bool rememberMe,
  required VoidCallback onToggleObscure,
  required ValueChanged<bool?> onRememberMeChanged,
  required VoidCallback onForgotPassword,
  required VoidCallback onLogin,
}) {
  return Form(
    key: formKey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 85),
        const AuthHeader(
          imagePath: 'assets/images/logoframe.png',
          title: 'Sign in to continue',
        ),
        const SizedBox(height: 40),

        CustomTextfield(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          hintText: 'Enter your email',
          prefixIcon: const Icon(Icons.email),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            return null;
          },
        ),
        const SizedBox(height: 20),

        CustomTextfield(
          controller: passwordController,
          hintText: 'Enter your password',
          prefixIcon: const Icon(Icons.lock),
          obscureText: obscurePassword,
          suffixIcon: IconButton(
            icon: Icon(obscurePassword
                ? Icons.visibility_off
                : Icons.visibility),
            onPressed: onToggleObscure,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            return null;
          },
        ),

        const SizedBox(height: 28),

        RememberForgotRow(
          rememberMeValue: rememberMe,
          onRememberMeChanged: onRememberMeChanged,
          onForgotPassword: onForgotPassword,
        ),

        const SizedBox(height: 28),

        CustomButton(
          text: 'Login',
          onPressed: onLogin,
          textStylebutton: Apptheme.buttonBoldsecondary,
        ),

        const SizedBox(height: 24),

        const Text('Or', style: Apptheme.caption1),

        const SizedBox(height: 24),

        CustomButton(
          text: 'Continue with Google',
          onPressed: () {},
          backgroundColor: Colors.white,
          textStylebutton: Apptheme.buttonBoldprimary,
          svgPath: 'assets/images/google.svg',
        ),
      ],
    ),
  );
}
