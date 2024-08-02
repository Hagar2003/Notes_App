import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/note_cubit_dart_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class BottomSheetForm extends StatefulWidget {
  const BottomSheetForm({super.key});

  @override
  State<BottomSheetForm> createState() => _MyWidgetState();
}

// final GlobalKey<FormState> formKey = GlobalKey();
// AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
// String? title, subTitle;

class _MyWidgetState extends State<BottomSheetForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          BlocBuilder<NoteCubitDartCubit, NoteCubitDartState>(
            builder: (context, state) {
              return CustomButton(
                isLoafing: state is NoteLoading ? true : false,
                text: 'Add',
                onTap: () {
              
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteM = NoteModel(
                        title: title!,
                        subtitle: subTitle!,
                        color: Colors.blue.value,
                        date: DateTime.now().toString());
                    BlocProvider.of<NoteCubitDartCubit>(context).addNote(noteM);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
