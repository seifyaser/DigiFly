import 'package:flutter/material.dart';
import 'package:digify/widgets/AuthHeader.dart';
import 'package:digify/widgets/CustomButton.dart';
import 'package:digify/widgets/CustomTextField.dart';
import 'package:digify/theme/appTheme.dart';
import 'package:digify/generated/l10n.dart';

Widget buildRegisterForm({
  required BuildContext context,
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
        AuthHeader(
          imagePath: 'assets/images/logoframe.png',
          title: S.of(context).authSignupTitle,
        ),
        const SizedBox(height: 40),
        // Name
        CustomTextfield(
          controller: nameController,
          hintText: S.of(context).authSignupUsername,
          prefixIcon: const Icon(Icons.person),
          validator: (value) =>
              value == null || value.isEmpty
                  ? S.of(context).authValidationEnterName
                  : null,
        ),
        const SizedBox(height: 20),
        // Email
        CustomTextfield(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          hintText: S.of(context).authSignupEmail,
          prefixIcon: const Icon(Icons.email),
          validator: (value) =>
              value == null || value.isEmpty
                  ? S.of(context).authValidationEnterEmail
                  : null,
        ),
        const SizedBox(height: 20),
        // Password
        CustomTextfield(
          controller: passwordController,
          hintText: S.of(context).authSignupPassword,
          prefixIcon: const Icon(Icons.lock),
          obscureText: obscurePassword,
          suffixIcon: IconButton(
            icon: Icon(obscurePassword
                ? Icons.visibility_off
                : Icons.visibility),
            onPressed: onTogglePassword,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).authValidationEnterPassword;
            }
            if (value.length < 8) {
              return S.of(context).authValidationPasswordLength;
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        // Confirm password
        CustomTextfield(
          controller: confirmPasswordController,
          hintText: S.of(context).authSignupConfirmPassword,
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
              return S.of(context).authValidationEnterConfirmPassword;
            }
            if (value != passwordController.text) {
              return S.of(context).authValidationPasswordNotMatch;
            }
            return null;
          },
        ),
        const SizedBox(height: 40),
        // Sign Up Button
        CustomButton(
          text: isLoading
              ? 'Signing Up...'
              : S.of(context).authSignupButton,
          onPressed: isLoading ? null : onHandleSignUp,
          textStylebutton: Apptheme.buttonBoldsecondary,
        ),
      ],
    ),
  );
}
