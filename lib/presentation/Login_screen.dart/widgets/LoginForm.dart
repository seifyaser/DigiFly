import 'package:flutter/material.dart';
import 'package:digify/presentation/Login_screen.dart/widgets/Remember_forget_row.dart';
import 'package:digify/theme/appTheme.dart';
import 'package:digify/widgets/AuthHeader.dart';
import 'package:digify/widgets/CustomButton.dart';
import 'package:digify/widgets/CustomTextField.dart';
import 'package:digify/generated/l10n.dart';

Widget buildLoginForm({
  required BuildContext context,
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
        AuthHeader(
          imagePath: 'assets/images/logoframe.png',
          title: S.of(context).authLoginTitle,
        ),
        const SizedBox(height: 40),
        CustomTextfield(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          hintText: S.of(context).authLoginEmail,
          prefixIcon: const Icon(Icons.email),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).authLoginEmail;
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        CustomTextfield(
          controller: passwordController,
          hintText: S.of(context).authLoginPassword,
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
              return S.of(context).authLoginPassword;
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
          text: S.of(context).authLoginButton,
          onPressed: onLogin,
          textStylebutton: Apptheme.buttonBoldsecondary,
        ),
        const SizedBox(height: 24),
        Text(S.of(context).authLoginOr, style: Apptheme.caption1),
        const SizedBox(height: 24),
        CustomButton(
          text: S.of(context).authLoginContinueWithGoogle,
          onPressed: () {},
          backgroundColor: Colors.white,
          textStylebutton: Apptheme.buttonBoldprimary,
          svgPath: 'assets/images/google.svg',
        ),
      ],
    ),
  );
}
