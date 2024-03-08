import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        foregroundColor: kSecendryColor,
        elevation: 10,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'EditPage');
        },
        child: NotesViewBody(),
      ),
    );
  }
}
