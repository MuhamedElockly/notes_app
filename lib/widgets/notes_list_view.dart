import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(
      builder: (context, state) {
        //BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
        //BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();

        print("State hhh : ${state.toString()}");

        List<NoteModel> notes =
            BlocProvider.of<NotesCubitCubit>(context).notes ?? [];
        return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: NoteItem(
                  noteModel: notes[index],
                ),
              );
            });
      },
    );
  }
}
