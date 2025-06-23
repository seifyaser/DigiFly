import 'package:digify/presentation/TextEditor_screen/cubit/text_editor_cubit.dart';
import 'package:flutter/material.dart';
import 'package:digify/routes/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextEditorCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
        initialRoute: AppRoutes.initial,
      ),
    );
  }
}
