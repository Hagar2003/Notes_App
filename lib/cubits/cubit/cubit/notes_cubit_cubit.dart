import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  fetchAllNotes() async {
    //emit(NotesLoading());
    try {
      var notesBx = Hive.box<NoteModel>('notesBox');
    List<NoteModel>nnotes=  notesBx.values.toList();
      emit(NotesSuccess(nnotes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
