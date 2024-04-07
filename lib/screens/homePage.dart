import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffede0d4),
      appBar: AppBar(
        title: const Text('Japanese Learning Hub'),
        backgroundColor: Color(0xff7f5539),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            category(
              text: 'Numbers',
            ),
            const SizedBox(
              height: 50,
            ),
            category(
              text: 'Family Members',
            ),
            const SizedBox(
              height: 50,
            ),
            category(
              text: 'Colors',
            ),
            const SizedBox(
              height: 50,
            ),
            category(
              text: 'Phrases',
            ),
            const SizedBox(
              height: 50,
            )
            ,
          ],
        ),
      ),
    );
  }
}

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
