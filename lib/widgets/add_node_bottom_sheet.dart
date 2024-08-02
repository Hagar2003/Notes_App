import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/note_cubit_dart_cubit.dart';
import 'package:notes_app/widgets/bottom_sheet_form.dart';

// ignore: must_be_immutable
class AddNode extends StatefulWidget {
  const AddNode({super.key});

  @override
  State<AddNode> createState() => _AddNodeState();
}

class _AddNodeState extends State<AddNode> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => (NoteCubitDartCubit() ),
        child: BlocConsumer<NoteCubitDartCubit, NoteCubitDartState >(
            listener: (context, state) {
          if (state is NoteFailure) {}

          if (state is NoteSuccess) {
          //  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        }, builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is NoteLoading ? true : false,
              child: Padding(
                  padding: EdgeInsets.only(
                      left: 16,
                      right: 16,
                      bottom: MediaQuery.of(context).viewInsets.bottom),//height of keyboard
                  child: const SingleChildScrollView(
                    child: BottomSheetForm(),
                  )));
        }));
  }
}
