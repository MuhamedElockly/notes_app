import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note.dart';
import 'package:notes_app/views/notes_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'EditPage': (context) => EditNote(),
        'NotePage': (context) => NotesView(),
      },
      initialRoute: 'NotePage',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: NotesView(),
    );
  }
}
