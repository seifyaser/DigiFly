import 'package:flutter/material.dart';

class TextEditorState {
  final String text;
  final TextAlign textAlign;
  final Map<IconData, bool> activeFormats;

  const TextEditorState({
    required this.text,
    required this.textAlign,
    required this.activeFormats,
  });

  TextEditorState copyWith({
    String? text,
    TextAlign? textAlign,
    Map<IconData, bool>? activeFormats,
  }) {
    return TextEditorState(
      text: text ?? this.text,
      textAlign: textAlign ?? this.textAlign,
      activeFormats: activeFormats ?? this.activeFormats,
    );
  }
}
