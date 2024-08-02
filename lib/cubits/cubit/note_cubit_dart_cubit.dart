import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_cubit.dart';

class NoteCubitDartCubit extends Cubit<NoteCubitDartState> {
  NoteCubitDartCubit() : super(NoteCubitDartInitial());
  addNote(NoteModel note) async {
    emit(NoteLoading());
    try {
      var notesBx = Hive.box<NoteModel>('notesBox');
      emit(NoteSuccess());
      await notesBx.add(note);
    } catch (e) {
      NoteFailure(errorMessage: e.toString());
    }
  }
}
