import 'package:flutter/material.dart';
import 'package:toku/models/ColorsModel.dart';
import 'package:toku/components/colorsitem.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<MColor> ColorMembers = const [
    
    MColor(image: 'assets/images/colors/color_black.png', 
    jpName: 'Kuro', 
    sound: 'sounds/colors/black.wav'),
    MColor(image: 'assets/images/colors/color_brown.png', 
    jpName: 'Chairo', 
    sound: 'sounds/colors/brown.wav'),
    MColor(image: 'assets/images/colors/color_dusty_yellow.png', 
    jpName: 'Ierō', 
    sound: 'sounds/colors/dusty yellow.wav'),
    MColor(image: 'assets/images/colors/color_green.png', 
    jpName: 'Midori', 
    sound: 'sounds/colors/green.wav'),
    MColor(image: 'assets/images/colors/color_gray.png', 
    jpName: 'Gurē', 
    sound: 'sounds/colors/gray.wav'),
    MColor(image: 'assets/images/colors/color_red.png', 
    jpName: 'Aka', 
    sound: 'sounds/colors/red.wav'),
    MColor(image: 'assets/images/colors/color_white.png', 
    jpName: 'Shiro', 
    sound: 'sounds/colors/white.wav'),
    MColor(image: 'assets/images/colors/yellow.png', 
    jpName: 'Kiiro', 
    sound: 'sounds/colors/yellow.wav'),

    
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff7f5539),
      ),
      body: ListView(
        children: getList(ColorMembers),
      ),
    );
  }

  List<Widget> getList(List<MColor> ColorMembers ) {
    List<Widget> itemList = [];
    for (int i = 0; i < ColorMembers.length; i++) {
      itemList.add(ColorItem(colorMember: ColorMembers[i]));
      itemList.add(const SizedBox(
        height: 10,
      ));
    }
    return itemList;
  }
}
