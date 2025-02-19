import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Padding(
            padding: const EdgeInsets.only(left:16.0,right: 16),
            child: Column(children: [const SizedBox(height: 55,),
              
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [const Text('Notes',style: TextStyle(fontSize: 28,color: Colors.white),),
                Container(width: 40,height: 40,
                 decoration:  BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                 
                 borderRadius :BorderRadius.circular(16)),
                 child:const Icon(Icons.search,size: 30,)) ],),
                
          
              ])
        ));
          

        
  }
}
