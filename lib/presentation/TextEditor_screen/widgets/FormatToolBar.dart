import 'package:digify/presentation/TextEditor_screen/cubit/text_editor_cubit.dart';
import 'package:digify/presentation/TextEditor_screen/cubit/text_editor_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget buildFormatToolbar(BuildContext context, TextEditorState state) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            state.activeFormats.keys.map((iconData) {
              final isActive = state.activeFormats[iconData]!;
              return GestureDetector(
                onTap:
                    () =>
                        context.read<TextEditorCubit>().toggleFormat(iconData),
                child: Icon(
                  iconData,
                  color: isActive ? Colors.blue : Colors.black,
                ),
              );
            }).toList(),
      ),
    );
  }