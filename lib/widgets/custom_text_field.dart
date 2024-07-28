import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint,this.maxLines =1});
  String hint;
  final int maxLines ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      //  onChanged: onChanged,
      maxLines: maxLines,
      cursorColor: const Color(0xff62ECD7),
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xff62ECD7),
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
          hintText: hint,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xff62ECD7),
            ),
          ),
          hintStyle: const TextStyle(color: Color(0xff62ECD7), fontSize: 19)),
    );
  }
}
