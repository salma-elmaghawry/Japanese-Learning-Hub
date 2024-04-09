import 'package:flutter/material.dart';
import 'package:toku/components/FamilyItems.dart';
import 'package:toku/models/FamilyModel.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<FMember> FamilyMembers = const [
    FMember(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        sound: 'sounds/family_members/father.wav'),
    FMember(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        sound: 'sounds/family_members/mother.wav'),
    FMember(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Sofu',
        sound: 'sounds/family_members/grand father.wav'),
    FMember(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        sound: 'sounds/family_members/grand mother.wav'),
    FMember(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        sound: 'sounds/family_members/younger brohter.wav'),
    FMember(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        sound: 'sounds/family_members/daughter.wav'),
    FMember(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        sound: 'sounds/family_members/older bother.wav'),
    FMember(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        sound: 'sounds/family_members/older sister.wav'),
    FMember(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        sound: 'sounds/family_members/son.wav'),
    FMember(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        sound: 'sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff7f5539),
      ),
      body: ListView(
        children: getList(FamilyMembers),
      ),
    );
  }

  List<Widget> getList(List<FMember> numbers) {
    List<Widget> itemList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemList.add(FamilyItem(FamilyMember: numbers[i]));
      itemList.add(const SizedBox(
        height: 10,
      ));
    }
    return itemList;
  }
}
