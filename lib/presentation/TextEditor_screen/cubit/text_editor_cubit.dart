import 'package:flutter/material.dart';
import 'text_editor_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextEditorCubit extends Cubit<TextEditorState> {
  TextEditorCubit()
      : super( TextEditorState(
          text: " ", 
          textAlign: TextAlign.left,
          activeFormats: {
            Icons.format_list_bulleted: false,
            Icons.format_list_numbered: false,
            Icons.format_align_left: true,
            Icons.format_align_center: false,
            Icons.format_align_right: false,
            Icons.format_align_justify: false,
            Icons.format_indent_increase: false,
          },
        ));

  final List<TextEditorState> _history = [];
  final List<TextEditorState> _redoStack = [];

  void _saveForUndo() {
    _history.add(state);
    _redoStack.clear();
  }

  void updateText(String text) {
    _saveForUndo();
    emit(state.copyWith(text: text));
  }

  void toggleFormat(IconData iconData) {
    _saveForUndo();

    final activeFormats = Map<IconData, bool>.from(state.activeFormats);

    if (iconData == Icons.format_list_bulleted) {
      final isActive = !activeFormats[iconData]!;
      activeFormats[iconData] = isActive;

      final newText = isActive
          ? state.text
              .split('\n')
              .map((line) => line.trim().isNotEmpty ? '• $line' : line)
              .join('\n')
          : state.text
              .split('\n')
              .map((line) => line.startsWith('• ')
                  ? line.replaceFirst('• ', '')
                  : line)
              .join('\n');

      emit(state.copyWith(text: newText, activeFormats: activeFormats));
    } else if (iconData == Icons.format_list_numbered) {
      final isActive = !activeFormats[iconData]!;
      activeFormats[iconData] = isActive;

      final newText = isActive
          ? state.text
              .split('\n')
              .asMap()
              .entries
              .map((entry) =>
                  entry.value.trim().isNotEmpty ? '${entry.key + 1}. ${entry.value}' : entry.value)
              .join('\n')
          : state.text
              .split('\n')
              .map((line) => line.replaceFirst(RegExp(r'^\d+\. '), ''))
              .join('\n');

      emit(state.copyWith(text: newText, activeFormats: activeFormats));
    } else if (iconData == Icons.format_indent_increase) {
      final isActive = !activeFormats[iconData]!;
      activeFormats[iconData] = isActive;

      final newText = isActive
          ? state.text.split('\n').map((line) => '    $line').join('\n')
          : state.text.split('\n').map((line) => line.replaceFirst(RegExp(r'^\s{4}'), '')).join('\n');

      emit(state.copyWith(text: newText, activeFormats: activeFormats));
    } else {
      activeFormats[Icons.format_align_left] = false;
      activeFormats[Icons.format_align_center] = false;
      activeFormats[Icons.format_align_right] = false;
      activeFormats[Icons.format_align_justify] = false;

      activeFormats[iconData] = true;

      final newAlign = iconData == Icons.format_align_left
          ? TextAlign.left
          : iconData == Icons.format_align_center
              ? TextAlign.center
              : iconData == Icons.format_align_right
                  ? TextAlign.right
                  : TextAlign.justify;

      emit(state.copyWith(textAlign: newAlign, activeFormats: activeFormats));
    }
  }

  void undo() {
    if (_history.isNotEmpty) {
      _redoStack.add(state);
      final prevState = _history.removeLast();
      emit(prevState);
    }
  }

  void redo() {
    if (_redoStack.isNotEmpty) {
      _history.add(state);
      final nextState = _redoStack.removeLast();
      emit(nextState);
    }
  }
}
