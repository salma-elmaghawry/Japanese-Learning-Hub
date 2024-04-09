import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/PhrasesModel.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.phrase}) : super(key: key);
  final Phrase phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffede0d4),
      child: Row(
        children: [
        
          Padding(
            padding: const EdgeInsets.only(left:10 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                phrase.enName,
                style: const TextStyle(fontSize: 20,
                color:Color(0xff7f5539)
                ),
            )],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
                splashColor: Color(0xff7f5539),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(phrase.sound));
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Color(0xff7f5539),
                  size: 35,
                )),
          )
        ],
      ),
    );
  }
}
