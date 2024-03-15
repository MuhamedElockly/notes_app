import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

class NoteItem extends StatelessWidget {
  final NoteModel noteModel;

  const NoteItem({super.key, required this.noteModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(noteModel.color),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              noteModel.title,
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Text(
                noteModel.subTitle,
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                noteModel.delete();
              },
              icon: Icon(
                Icons.delete,
                size: 24,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 24, bottom: 16),
            child: Text(
              noteModel.date,
              style:
                  TextStyle(color: Colors.black.withOpacity(.4), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
