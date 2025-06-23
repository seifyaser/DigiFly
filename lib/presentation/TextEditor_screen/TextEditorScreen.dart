import 'package:digify/presentation/TextEditor_screen/cubit/text_editor_cubit.dart';
import 'package:digify/presentation/TextEditor_screen/cubit/text_editor_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextEditorScreen extends StatefulWidget {
  const TextEditorScreen({super.key});

  @override
  State<TextEditorScreen> createState() => _TextEditorScreenState();
}

class _TextEditorScreenState extends State<TextEditorScreen> {
  late TextEditingController _controller;

  final String _defaultText = """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
when an unknown printer took a galley of type and scrambled it to make a type specimen book.
""";

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: _defaultText);
    context.read<TextEditorCubit>().updateText(_defaultText);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildFormatToolbar(BuildContext context, TextEditorState state) {
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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TextEditorCubit, TextEditorState>(
      listener: (context, state) {
        if (_controller.text != state.text) {
          _controller.text = state.text;
          _controller.selection = TextSelection.collapsed(
            offset: state.text.length,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              "Text Editor",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Introduce yourself',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                // =========== ToolBar =========== //
                Row(
                  children: [
                    Expanded(child: _buildFormatToolbar(context, state)),
                    IconButton(
                      icon: const Icon(Icons.undo),
                      tooltip: 'Undo',
                      onPressed: () => context.read<TextEditorCubit>().undo(),
                    ),
                    IconButton(
                      icon: const Icon(Icons.redo),
                      tooltip: 'Redo',
                      onPressed: () => context.read<TextEditorCubit>().redo(),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // =========== Text Field =========== //
                Expanded(
                  child: TextField(
                    textAlignVertical: TextAlignVertical.top,
                    controller: _controller,
                    maxLines: null,
                    expands: true,
                    maxLength: 2000,
                    textAlign: state.textAlign,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    onChanged:
                        (text) =>
                            context.read<TextEditorCubit>().updateText(text),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
