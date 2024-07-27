import 'package:flutter/material.dart';

import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  theme: ThemeData(brightness: Brightness                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      .dark,),
        
        debugShowCheckedModeBanner: false,
        home: Scaffold(
      body: 
          Padding(
            padding: const EdgeInsets.only(left:16.0,right: 16),
            child: Column(children: [const SizedBox(height: 45,),
              
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [const Text('Notes',style: TextStyle(fontSize: 28,),),
                Container(width: 40,height: 40,
                 decoration:  BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                 
                 borderRadius :BorderRadius.circular(16)),
                 child:const Icon(Icons.search,size: 30,)) ],),
                //const  NoteItem(),
              const  NotesListView()
              ])
        )));
          

        
  }
}
