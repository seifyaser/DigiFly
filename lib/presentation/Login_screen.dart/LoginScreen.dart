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
            children:[
             Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 85),
                                
                      // ✅ Logo
                      Image.asset(
                        'assets/images/logoframe.png',
                        width: 116,
                        height: 80,
                      ),
                      const SizedBox(height: 24),
                                
                      // ✅ Title
                      const Text(
                        'Sign in to continue',
                        style: Apptheme.heading,
                      ),
                      const SizedBox(height: 40),
                                
                      // ✅ Email Field
                      CustomTextfield(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'Enter your email',
                        labelText: 'Email',
                        prefixIcon: const Icon(Icons.email),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                                
                      // ✅ Password Field
                      CustomTextfield(
                        controller: passwordController,
                        hintText: 'Enter your password',
                        labelText: 'Password',
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
                      const SizedBox(height: 18),
                                
                      // ✅ Remember me and forgot password
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          const Text('Remember me'),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password ?',
                              style: TextStyle(
                                color: Apptheme.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                                
                      const SizedBox(height: 28),
                                
                      // ✅ Login button
                      CustomButton(
                        text: 'Login',
                        onPressed: () {},
                        textStylebutton: Apptheme.buttonBoldsecondary,
                      ),
                                
                      const SizedBox(height: 24),
                      const Text('Or', style: Apptheme.caption),
                      const SizedBox(height: 24),
                                
                      // ✅ Google login
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
            
                // ✅ "Don't have an account?" + مسافة من الأسفل
                const SizedBox(height: 150),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account ? ",style: Apptheme.caption,),
                    GestureDetector(
                      onTap: () {
                        // Navigate to Sign Up
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Apptheme.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
         ] ),
        ),
      ),
    );
  }
}
