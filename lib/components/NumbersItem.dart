import 'package:flutter/material.dart';
import 'package:toku/models/NumberModel.dart';

class NumbersItem extends StatelessWidget {
  const NumbersItem({Key? key,required this.number}) : super(key: key);
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffede0d4),
      child: Row(
        children: [
          Image.asset(number.image),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.jpName,
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
              splashColor:Color(0xff7f5539) ,
            onPressed: (){}, 
            icon:const Icon(
                  Icons.play_arrow,
                  color: Color(0xff7f5539),
                  size: 35, )),
          )
          
          
        ],
      ),
    );
  }
}
