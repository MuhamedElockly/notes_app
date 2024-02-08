import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field%20copy.dart';

class AddNoteBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: const AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
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
          SizedBox(
            height: 48,
          ),
          CustomButton()
        ],
      ),
    );
  }
}
