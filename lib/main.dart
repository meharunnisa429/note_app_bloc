import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/presentation/bloc/note/note_bloc.dart';
import 'package:note_app/presentation/screen/note_screen.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => NoteBloc(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NoteScreen(),
    );
  }
}
