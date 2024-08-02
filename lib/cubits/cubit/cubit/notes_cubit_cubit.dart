import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  List<NoteModel> ?notes;
  fetchAllNotes() async {
    //emit(NotesLoading());

    var notesBx = Hive.box<NoteModel>('notesBox');
  notes = notesBx.values.toList();
    emit(NotesSuccess());
  }
}
