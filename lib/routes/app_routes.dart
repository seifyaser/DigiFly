import 'package:digify/presentation/AccountSettings/AccountScreen.dart';
import 'package:digify/presentation/Login_screen.dart/LoginScreen.dart';
import 'package:digify/presentation/TextEditor_screen/TextEditorScreen.dart';
import 'package:digify/presentation/basicData_screen/basicData.dart';
import 'package:digify/presentation/home_screen/homepage.dart';
import 'package:digify/presentation/signUp_screen/signUP.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String initial = '/';
  static const String loginScreen = '/login-screen';
  static const String registrationScreen = '/registration-screen';
  static const String homeDashboard = '/home-dashboard';
  static const String textEditor = '/text-editor';
  static const String basicData = '/user-profile';
  static const String settingsScreen = '/settings-screen';

  static Map<String, WidgetBuilder> routes = {
    initial: (context) => const Loginscreen(),
    loginScreen: (context) => const Loginscreen(),
    registrationScreen: (context) => const SignupScreen(),
    homeDashboard: (context) => const HomePage(),
    textEditor: (context) => const TextEditorScreen(),
    basicData: (context) => const BasicDataScreen(),
    settingsScreen: (context) => const AccountSettingsScreen(),
  };
}