import 'package:flutter/material.dart';
import 'package:toku/screens/NumbersPage.dart';

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
            Category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return NumbersPage();
                }));
              },
              text: 'Numbers',
            ),
            const SizedBox(
              height: 50,
            ),
            Category(
              onTap: () {},
              text: 'Family Members',
            ),
            const SizedBox(
              height: 50,
            ),
            Category(
              onTap: () {},
              text: 'Colors',
            ),
            const SizedBox(
              height: 50,
            ),
            Category(
              onTap: () {},
              text: 'Phrases',
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  Category({this.text, this.onTap});
  String? text;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
