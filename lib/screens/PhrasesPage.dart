import 'package:flutter/material.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff7f5539),
      ),
    );
  }
}