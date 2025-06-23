import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class AuthService {
  final Map<String, String> _mockCredentials = {
    'admin@digifly.com': 'admin123',
    'user@digifly.com': 'user123',
    'test@digifly.com': 'test123',
  };

  Future<bool> signIn(BuildContext context, String email, String password) async {
    if (_mockCredentials.containsKey(email) && _mockCredentials[email] == password) {
      HapticFeedback.lightImpact();
      return true;
    } else {
      HapticFeedback.mediumImpact();
      return false;
    }
  }

  Future<void> register(String username, String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));

    if (_mockCredentials.containsKey(email)) {
      throw Exception('Email already exists!');
    }
    _mockCredentials[email] = password;

    return;
  }

  void signUp(BuildContext context) {
    Navigator.pushNamed(context, '/registration-screen');
  }
}
