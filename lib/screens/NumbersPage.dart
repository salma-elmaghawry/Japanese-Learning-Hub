import 'package:flutter/material.dart';
import 'package:toku/components/NumbersItem.dart';
import '../models/NumberModel.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<Number> numbers = const [
    Number(
        image: "assets/images/numbers/number_one.png",
        jpName: "Ichi",
        enName: "One"),
          Number(
        image: "assets/images/numbers/number_two.png",
        jpName: "Ni",
        enName: "Two"),
          Number(
        image: "assets/images/numbers/number_three.png",
        jpName: "San",
        enName: "Three"),
          Number(
        image: "assets/images/numbers/number_four.png",
        jpName: "Shi",
        enName: "Four"),
          Number(
        image: "assets/images/numbers/number_five.png",
        jpName: "Go",
        enName: "Five"),
          Number(
        image: "assets/images/numbers/number_six.png",
        jpName: "Roko",
        enName: "six"),
          Number(
        image: "assets/images/numbers/number_seven.png",
        jpName: "Sebun",
        enName: "seven"),
          Number(
        image: "assets/images/numbers/number_eight.png",
        jpName: "Hachi",
        enName: "Eight"),
          Number(
        image: "assets/images/numbers/number_nine.png",
        jpName: "Kyu",
        enName: "Nine"),
          Number(
        image: "assets/images/numbers/number_ten.png",
        jpName: "Ju",
        enName: "Ten"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff7f5539),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          NumbersItem(number: numbers[0]),
          const SizedBox(
            height: 10,
          ),
          NumbersItem(number: numbers[1]),
          const SizedBox(
            height: 10,
          ),
          NumbersItem(number:numbers[2] ),
          const SizedBox(
            height: 10,
          ),
          NumbersItem(number: numbers[3]),
          const SizedBox(
            height: 10,
          ),
          NumbersItem(number: numbers[4]),
          const SizedBox(
            height: 10,
          ),
          NumbersItem(number: numbers[5]),
          const SizedBox(
            height: 10,
          ),
          NumbersItem(number: numbers[6]),
          const SizedBox(
            height: 10,
          ),
          NumbersItem(number: numbers[7]),
          const SizedBox(
            height: 10,
          ),
          NumbersItem(number: numbers[8]),
          const SizedBox(
            height: 10,
          ),
          NumbersItem(number: numbers[9]),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
