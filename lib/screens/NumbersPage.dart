import 'package:flutter/material.dart';
import 'package:toku/components/NumbersItem.dart';
import '../models/NumberModel.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<Number> numbers = const [
    Number(
      image: "assets/images/numbers/number_one.png",
      jpName: "Ichi",
      sound:'sounds/numbers/number_one_sound.mp3'
    ),
    Number(
      image: "assets/images/numbers/number_two.png",
      jpName: "Ni",
      sound: 'sounds/numbers/number_two_sound.mp3'
    ),
    Number(
      image: "assets/images/numbers/number_three.png",
      jpName: "San",
      sound: 'sounds/numbers/number_three_sound.mp3'
    ),
    Number(
      image: "assets/images/numbers/number_four.png",
      jpName: "Shi",
      sound:'sounds/numbers/number_four_sound.mp3'
    ),
    Number(
      image: "assets/images/numbers/number_five.png",
      jpName: "Go",
      sound: 'sounds/numbers/number_five_sound.mp3'
    ),
    Number(
      image: "assets/images/numbers/number_six.png",
      jpName: "Roko",
      sound: 'sounds/numbers/number_six_sound.mp3'
    ),
    Number(
      image: "assets/images/numbers/number_seven.png",
      jpName: "Sebun",
      sound: 'sounds/numbers/number_seven_sound.mp3'
    ),
    Number(
      image: "assets/images/numbers/number_eight.png",
      jpName: "Hachi",
      sound: 'sounds/numbers/number_eight_sound.mp3'
    ),
    Number(
      image: "assets/images/numbers/number_nine.png",
      jpName: "Kyu",
      sound: 'sounds/numbers/number_nine_sound.mp3'
    ),
    Number(
      image: "assets/images/numbers/number_ten.png",
      jpName: "Ju",
      sound: 'sounds/numbers/number_ten_sound.mp3'
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
    itemList.add(NumbersItem(
      
      number: numbers[i]));
    itemList.add(const SizedBox(
      height: 10,
    ));
  }
  return itemList;
}


  
  
}
