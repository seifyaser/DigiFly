import 'package:flutter/material.dart';
import 'package:digify/widgets/AuthHeader.dart';
import 'package:digify/widgets/CustomButton.dart';
import 'package:digify/widgets/CustomTextField.dart';
import 'package:digify/theme/appTheme.dart';

Widget buildRegisterForm({
  required GlobalKey<FormState> formKey,
  required TextEditingController nameController,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  required TextEditingController confirmPasswordController,
  required bool obscurePassword,
  required bool obscureConfirmPassword,
  required bool isLoading,
  required VoidCallback onTogglePassword,
  required VoidCallback onToggleConfirmPassword,
  required VoidCallback onHandleSignUp,
}) {
  return Form(
    key: formKey,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 65),
        const AuthHeader(
          imagePath: 'assets/images/logoframe.png',
          title: 'Create a new account',
        ),
        const SizedBox(height: 40),
        // Name
        CustomTextfield(
          controller: nameController,
          hintText: 'Username',
          prefixIcon: const Icon(Icons.person),
          validator: (value) =>
              value == null || value.isEmpty ? 'Please enter your name' : null,
        ),
        const SizedBox(height: 20),
        // Email
        CustomTextfield(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          hintText: 'Email',
          prefixIcon: const Icon(Icons.email),
          validator: (value) =>
              value == null || value.isEmpty ? 'Please enter your email' : null,
        ),
        const SizedBox(height: 20),
        // Password
        CustomTextfield(
          controller: passwordController,
          hintText: 'Password',
          prefixIcon: const Icon(Icons.lock),
          obscureText: obscurePassword,
          suffixIcon: IconButton(
            icon: Icon(obscurePassword ? Icons.visibility_off : Icons.visibility),
            onPressed: onTogglePassword,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            if (value.length < 8) {
              return 'Password must be at least 8 characters';
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        CustomTextfield(
          controller: confirmPasswordController,
          hintText: 'Confirm password',
          prefixIcon: const Icon(Icons.lock),
          obscureText: obscureConfirmPassword,
          suffixIcon: IconButton(
            icon: Icon(obscureConfirmPassword
                ? Icons.visibility_off
                : Icons.visibility),
            onPressed: onToggleConfirmPassword,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please confirm your password';
            }
            if (value != passwordController.text) {
              return 'Passwords do not match';
            }
            return null;
          },
        ),
        const SizedBox(height: 40),
        CustomButton(
          text: isLoading ? 'Signing Up...' : 'Sign Up',
          onPressed: isLoading ? null : onHandleSignUp,
          textStylebutton: Apptheme.buttonBoldsecondary,
        ),
      ],
    ),
  );
}
