import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_node_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
          color:const Color.fromARGB(255, 173, 171, 176),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  'Build your career with us ',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.4), fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 27,
                  )),
            ),
            // ignore: prefer_const_constructors
            Text(
              'May 12/5/2024',
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
