import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

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
          child: Form(
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
                CustomButton(
                  text: 'Add',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {
                        
                      });
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
