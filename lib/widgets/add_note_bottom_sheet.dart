import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field%20copy.dart';

class AddNoteBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: 'Content',
            maxLine: 4,
          ),
        ],
      ),
    );
  }
}
