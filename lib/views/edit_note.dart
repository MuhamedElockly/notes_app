import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/cubit/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_list_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field%20copy.dart';
import 'package:notes_app/widgets/edit_note_color_list.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class EditNote extends StatefulWidget {
  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String? title, content;

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
              onPressed: () {
                noteModel.title = title ?? noteModel.title;
                noteModel.subTitle = content ?? noteModel.subTitle;
                noteModel.save();
                BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: noteModel.title,
              icon: Icons.check,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: noteModel.title,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hintText: noteModel.subTitle,
              maxLine: 3,
            ),
            SizedBox(
              height: 50,
            ),
            EditNoteColorList(noteModel: noteModel),
          ],
        ),
      ),
    );
  }
}
