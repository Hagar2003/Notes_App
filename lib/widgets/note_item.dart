import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/cubit/notes_cubit_cubit.dart';
import 'package:notes_app/views/edit_node_view.dart';

import '../models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNodeView();
        }));
      },
      child: Container(
        width: 400,
        padding: const EdgeInsets.only(top: 12, bottom: 12, right: 8),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  note.subtitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.4), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes;
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 27,
                  )),
            ),
            // ignore: prefer_const_constructors
            Text(
              note.date,
              style: TextStyle(
                  color: const Color.fromARGB(255, 12, 12, 12).withOpacity(.4),
                  fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
