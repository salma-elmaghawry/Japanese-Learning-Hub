import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/FamilyModel.dart';

class FamilyItem extends StatelessWidget {
  const FamilyItem({Key? key, required this.FamilyMember}) : super(key: key);
  final FMember FamilyMember;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffede0d4),
      child: Row(
        children: [
          Image.asset(FamilyMember.image),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                FamilyMember.jpName,
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
                  player.play(AssetSource(FamilyMember.sound));
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
