import 'package:flutter/material.dart';
import 'package:toku/components/NumbersItem.dart';
import '../models/NumberModel.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<Number> numbers = const [
    Number(
      image: "assets/images/numbers/number_one.png",
      jpName: "Ichi",
    ),
    Number(
      image: "assets/images/numbers/number_two.png",
      jpName: "Ni",
    ),
    Number(
      image: "assets/images/numbers/number_three.png",
      jpName: "San",
    ),
    Number(
      image: "assets/images/numbers/number_four.png",
      jpName: "Shi",
    ),
    Number(
      image: "assets/images/numbers/number_five.png",
      jpName: "Go",
    ),
    Number(
      image: "assets/images/numbers/number_six.png",
      jpName: "Roko",
    ),
    Number(
      image: "assets/images/numbers/number_seven.png",
      jpName: "Sebun",
    ),
    Number(
      image: "assets/images/numbers/number_eight.png",
      jpName: "Hachi",
    ),
    Number(
      image: "assets/images/numbers/number_nine.png",
      jpName: "Kyu",
    ),
    Number(
      image: "assets/images/numbers/number_ten.png",
      jpName: "Ju",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff7f5539),
      ),
      body: ListView(
        children: 
          getList(numbers)
        ,
      ),
    );
  }
  List<Widget> getList(List<Number> numbers) {
  List<Widget> itemList = [];
  for (int i = 0; i < numbers.length; i++) {
    itemList.add(NumbersItem(number: numbers[i]));
    itemList.add(const SizedBox(
      height: 10,
    ));
  }
  return itemList;
}


  
  
}
