import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNodeBody extends StatelessWidget {
  const EditNodeBody({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(body:
    Padding(
            padding: const EdgeInsets.only(left:16.0,right: 16),
            child: Column(children: [const SizedBox(height: 75,),
              
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [const Text('Edit Note',
                  style: TextStyle(fontSize: 25,color: Colors.white),),
                Container(width: 40,height: 40,
                 decoration:  BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                 
                 borderRadius :BorderRadius.circular(16)),
                 child:const Icon(Icons.check,size: 28,)) ],),
                 const SizedBox(height: 50,),
                CustomTextField(hint :'Title'),
              const SizedBox(height:16),
              CustomTextField(hint: 'content',
              maxLines: 5,),
              const SizedBox(height: 30,),
          
              ])
        ));
          

        
  }
}

