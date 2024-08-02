import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/note_cubit_dart_cubit.dart';
import 'package:notes_app/widgets/bottom_sheet_form.dart';

// ignore: must_be_immutable
class AddNode extends StatefulWidget {
  const AddNode({super.key});

  @override
  State<AddNode> createState() => _AddNodeState();
}

class _AddNodeState extends State<AddNode> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode =
      AutovalidateMode.disabled; //to show error if exist in validation
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: SingleChildScrollView(
            child: BlocConsumer<NoteCubitDartCubit, NoteCubitDartState>(
          listener: (context, state) {
            if (state is NoteFailure) {
              print('failed  ${state.errorMessage}');
            }
            if (state is NoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is NoteLoading ? true : false,
                child: const BottomSheetForm());
          },
        )),
      ),
    );
  }
}
