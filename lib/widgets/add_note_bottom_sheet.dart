import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field%20copy.dart';

class AddNoteBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: const AddNoteForm(),
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
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
          } else if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: globalKey,
                  autovalidateMode: autovalidateMode,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: 'Title ',
                        onSaved: (value) {
                          title = value;
                        },
                      ),
                      SizedBox(height: 20),
                      CustomTextField(
                        hintText: 'Content',
                        maxLine: 4,
                        onSaved: (value) {
                          subTitle = value;
                        },
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      CustomButton(
                        isLoading: state is AddNoteLoading ? true : false,
                        onTap: () {
                          if (globalKey.currentState!.validate()) {
                            globalKey.currentState!.save();
                            var currentDate = DateTime.now();
                            var formatedDate =
                                DateFormat("yyyy-mm-dd").format(currentDate);
                            var noteModel = NoteModel(
                              title: title!,
                              subTitle: subTitle!,
                              date: formatedDate.toString(),
                              color: Colors.orange.value,
                            );
                            BlocProvider.of<AddNoteCubit>(context)
                                .addNote(noteModel);
                            setState(() {});
                          } else {
                            autovalidateMode = AutovalidateMode.always;
                            setState(() {});
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
