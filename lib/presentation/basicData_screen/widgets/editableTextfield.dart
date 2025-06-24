 import 'package:digify/theme/appTheme.dart';
import 'package:digify/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

Widget buildEditableTextField({
    required String label,
    required TextEditingController controller,
    String? hintText,
    String? Function(String?)? validator,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Apptheme.caption2),
        Row(
          children: [
            Expanded(
              child: CustomTextfield(
                controller: controller,
                hintText: hintText ?? label,
                validator: validator,
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.edit, size: 18, color: Colors.grey),
          ],
        ),
      ],
    );
  }