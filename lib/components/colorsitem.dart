import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/ColorsModel.dart';


class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.colorMember}) : super(key: key);
  final MColor colorMember;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffede0d4),
      child: Row(
        children: [
          Image.asset(colorMember.image),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                colorMember.jpName,
                style: TextStyle(fontSize: 23),
              ),
              //Text(
              //number.enName,
              //style: TextStyle(fontSize: 23),
              //),
            ],
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
                splashColor: Color(0xff7f5539),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(colorMember.sound));
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
