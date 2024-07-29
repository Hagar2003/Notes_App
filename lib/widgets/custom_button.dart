import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
   CustomButton({super.key, required this.text,this.onTap});
  String text;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          
          decoration: BoxDecoration(
              color:const Color(0xff62ECD7), borderRadius: BorderRadius.circular(10)),
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
