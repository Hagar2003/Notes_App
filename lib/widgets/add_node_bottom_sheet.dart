import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNode extends StatelessWidget {
  const AddNode({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20)),
      child:  Padding(
        padding: const EdgeInsets.only( left: 16.0,right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [const SizedBox(height: 30,),
              CustomTextField(hint :'Title'),
              const SizedBox(height:16),
              CustomTextField(hint: 'content',
              maxLines: 5,),
              const SizedBox(height: 30,),
              CustomButton(text: 'Add'),
              const SizedBox(height: 40,)],
          ),
        ),
      ),
    );
  }
}