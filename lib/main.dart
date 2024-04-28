import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: const NotesViewBody(),
      ),
    );
  }
}
