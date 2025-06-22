import 'package:flutter/material.dart';
import 'package:digify/theme/appTheme.dart';

class AuthHeader extends StatelessWidget {
  final String imagePath;
  final String title;

  const AuthHeader({
    super.key,
   required this.imagePath ,
   required this.title ,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 116,
          height: 80,
        ),
        const SizedBox(height: 40),
        Text(
          title,
          style: Apptheme.heading,
        ),
      ],
    );
  }
}
