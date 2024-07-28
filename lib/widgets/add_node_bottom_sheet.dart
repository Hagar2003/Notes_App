import 'package:flutter/material.dart';
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
        child: Column(
          children: [const SizedBox(height: 40,),
            CustomTextField(hint :'Title'),
            SizedBox(height:20),
            CustomTextField(hint: 'content',
            maxLines: 5,)],
        ),
      ),
    );
  }
}