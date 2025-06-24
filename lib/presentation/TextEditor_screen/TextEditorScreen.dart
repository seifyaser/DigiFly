import 'package:digify/generated/l10n.dart';
import 'package:digify/presentation/TextEditor_screen/cubit/text_editor_cubit.dart';
import 'package:digify/presentation/TextEditor_screen/cubit/text_editor_state.dart';
import 'package:digify/presentation/TextEditor_screen/widgets/FormatToolBar.dart';
import 'package:digify/theme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextEditorScreen extends StatefulWidget {
  const TextEditorScreen({super.key});

  @override
  State<TextEditorScreen> createState() => _TextEditorScreenState();
}

class _TextEditorScreenState extends State<TextEditorScreen> {
  late TextEditingController _controller;

  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      final String defaultText = S.of(context).placeholderEditorfield;
      _controller.text = defaultText;
      context.read<TextEditorCubit>().updateText(defaultText);
      _initialized = true;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TextEditorCubit, TextEditorState>(
      listener: (context, state) {
        if (_controller.text != state.text) {
          _controller.text = state.text;
          _controller.selection = TextSelection.collapsed(offset: state.text.length);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              S.of(context).editorTitle,
              style: Apptheme.buttonBoldprimary,
            ),
            centerTitle: true,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).editorIntroduceYourSelf, style: Apptheme.heading3),
                const SizedBox(height: 20),
                // =========== ToolBar =========== //
                Row(
                  children: [
                    Expanded(child: buildFormatToolbar(context, state)),
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
                    onChanged: (text) =>
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
