import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_cubit.dart';

class NoteCubitDartCubit extends Cubit<NoteCubitDartState> {
  NoteCubitDartCubit() : super(NoteCubitDartInitial());
  Color color= const Color(0xffAC3931);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(NoteLoading());
    try {
      var notesBx = Hive.box<NoteModel>('notesBox');
      //emit(NoteSuccess());
      await notesBx.add(note);
      emit(NoteSuccess());
    } catch (e) {
      emit(NoteFailure(errorMessage: e.toString()));
    }
  }
}
