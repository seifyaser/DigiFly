import 'package:digify/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:digify/theme/appTheme.dart';

class RememberForgotRow extends StatelessWidget {
  final bool rememberMeValue;
  final ValueChanged<bool?> onRememberMeChanged;
  final VoidCallback onForgotPassword;

  const RememberForgotRow({
    super.key,
    required this.rememberMeValue,
    required this.onRememberMeChanged,
    required this.onForgotPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: rememberMeValue,
          onChanged: onRememberMeChanged,
        ),
         Text(S.of(context).authLoginRememberMe, style: Apptheme.caption1),
        const Spacer(),
        TextButton(
          onPressed: onForgotPassword,
          child:  Text(
            S.of(context).authLoginForgotPassword,
            style: TextStyle(color: Apptheme.primaryColor),
          ),
        ),
      ],
    );
  }
}
