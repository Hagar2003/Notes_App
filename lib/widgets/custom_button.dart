import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
   CustomButton({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xff62ECD7), borderRadius: BorderRadius.circular(16)),
          height: 55,
          child:  Center(
              child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(.7)
            ),
          ))),
    );
  }
}
