import 'package:digify/presentation/Login_screen.dart/widgets/Remember_forget_row.dart';
import 'package:digify/presentation/signUp_screen/signUP.dart';
import 'package:digify/widgets/AuthFooter.dart';
import 'package:digify/widgets/AuthHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:digify/widgets/CustomButton.dart';
import 'package:digify/widgets/CustomTextField.dart';
import 'package:digify/theme/appTheme.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 85),

                        AuthHeader(
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
                          obscureText: _obscurePassword,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
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
                          rememberMeValue: _rememberMe,
                          onRememberMeChanged: (value) {
                            setState(() {
                              _rememberMe = value ?? false;
                            });
                          },
                          onForgotPassword: () {
                            // Navigate to forgot password screen
                          },
                        ),

                        const SizedBox(height: 28),

                        CustomButton(
                          text: 'Login',
                            onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // Do login logic
                            }
                          },
                          textStylebutton: Apptheme.buttonBoldsecondary,
                        ),

                        const SizedBox(height: 24),
                        const Text('Or', style: Apptheme.caption),
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
                  ),

                  const SizedBox(height: 150),
                  AuthFooter(
                    questionText: 'Don\'t have an account ? ',
                    actionText: 'Sign up',
                    onTap: () {
  Navigator.pushNamed(
    context,
    '/registration-screen',
  );
},

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
