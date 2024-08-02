import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesCubitCubit, NotesCubitState>(
        builder: (context, state) {
          List<NoteModel> notes=BlocProvider.of<NotesCubitCubit>(context).notes ?? [];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: NoteItem(note: notes[index],),
                  );
                }),
          );
        },
      ),
    );
  }
}
