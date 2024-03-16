import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field%20copy.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class EditNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    // print((arguments['noteModel']as NoteModel).title);
    NoteModel noteModel = (arguments['noteModel'] as NoteModel);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: noteModel.title,
              icon: Icons.check,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: noteModel.title,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(
              hintText: noteModel.subTitle,
              maxLine: 3,
            ),
          ],
        ),
      ),
    );
  }
}
