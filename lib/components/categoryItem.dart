import 'package:flutter/material.dart';
class category extends StatelessWidget {
  category({this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffb08968),
        borderRadius: BorderRadius.circular(10), 
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
      ),
      child: Text(
        text!,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 21,
        ),
      ),
      
    );
    
  }
}


