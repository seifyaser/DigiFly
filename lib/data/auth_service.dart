import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class AuthService {
  final Map<String, String> _mockCredentials = {
    'admin@digifly.com': 'admin123',
    'user@digifly.com': 'user123',
    'test@digifly.com': 'test123',
  };
  
  final List<String> _existingEmails = [
    'john.doe@example.com',
    'jane.smith@example.com',
    'admin@digifly.com',
  ];

  final List<String> _existingUsernames = [
    'johndoe',
    'janesmith',
    'admin',
  ];

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

    if (_existingEmails.contains(email) || _mockCredentials.containsKey(email)) {
      throw Exception('Email already exists!');
    }

    if (_existingUsernames.contains(username.toLowerCase())) {
      throw Exception('Username already taken!');
    }

    _mockCredentials[email] = password;

    _existingEmails.add(email);
    _existingUsernames.add(username.toLowerCase());
  }

  void signUp(BuildContext context) {
    Navigator.pushNamed(context, '/registration-screen');
  }
}
