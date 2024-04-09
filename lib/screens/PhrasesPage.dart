import 'package:flutter/material.dart';
import 'package:toku/components/PhrasesItem.dart';
import 'package:toku/models/PhrasesModel.dart';


class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<Phrase> phrases = const [
    Phrase(jpName: 'Anata no namae wa nandesuka',enName: 'What is your name',
    sound: 'sounds/phrases/what_is_your_name.wav'),
    Phrase(jpName: 'Kimasu ka',enName: 'Are you comming ',
    sound: 'sounds/phrases/are_you_coming.wav'),
    Phrase(jpName: 'Kōdoku suru koto o wasurenaide kudasai',enName: "Don't forget to subscribe",
    sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    
    Phrase(jpName: 'Go kibun wa ikagadesu ka',enName: 'How are you feeling',
    sound: 'sounds/phrases/how_are_you_feeling.wav'),
    
    Phrase(jpName: 'Watashi wa anime ga daisukidesu',enName: 'I love anime',
    sound: 'sounds/phrases/i_love_anime.wav'),
    
    Phrase(jpName: 'Puroguramingu wa kantandesu',enName: 'Programming is easy',
    sound: 'sounds/phrases/programming_is_easy.wav'),
    
    Phrase(jpName: 'Doko ni iku no',enName: 'Where are you going',
    sound: 'sounds/phrases/where_are_you_going.wav'),
    Phrase(jpName: 'Hai, ikimasu',enName: "Yes,I'm coming",
    sound: 'sounds/phrases/yes_im_coming.wav'),
  
    

    
    

  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff7f5539),
      ),
      
      body: ListView(
        children: 
      
          getList(phrases)
        ,
        
      ),
    );
  }
  List<Widget> getList(List<Phrase> phrases) {
  List<Widget> itemList = [];
  for (int i = 0; i < phrases.length; i++) {
    itemList.add(PhrasesItem(
      
      
      phrase: phrases[i]));
    itemList.add(const SizedBox(
      height: 10,
    ));
  }
  return itemList;
}


  
  
}
