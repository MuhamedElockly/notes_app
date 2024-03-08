import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchAllNotes() async {
    emit(NotesCubitLoading());

    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = noteBox.values.toList as List<NoteModel>;
      emit(NotesCubitSuccess(notes: notes));
    } catch (e) {
      emit(
        NotesCubitFailure(errMessage: e.toString()),
      );
    }
  }
}
