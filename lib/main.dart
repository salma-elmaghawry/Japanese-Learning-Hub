import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';

void main() {
  runApp(TokuApp());
}
class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffede0d4),
        appBar: AppBar(
          title: Text('Toku'),
          backgroundColor: Color(0xff7f5539),
        ),
        
        body: Column(
          children: [
            Container(
              padding:EdgeInsets.only(left:20) ,
              alignment: Alignment.centerLeft,
              height:65 ,
              width: double.infinity,
              color: Color(0xffb08968),
              child: Text('Numbers',style: TextStyle(
                color: Colors.white,
                fontSize: 21,
              ),),
              
            ),
            Container(
              padding:EdgeInsets.only(left:20) ,
              alignment: Alignment.centerLeft,
              height:65 ,
              width: double.infinity,
              color: Color(0xffb08968),
              child: Text('Family Members',style: TextStyle(
                color: Colors.white,
                fontSize: 21,
              ),),
              
            ),
            Container(
              padding:EdgeInsets.only(left:20) ,
              alignment: Alignment.centerLeft,
              height:65 ,
              width: double.infinity,
              color: Color(0xffb08968),
              child: Text('Colors',style: TextStyle(
                color: Colors.white,
                fontSize: 21,
              ),),
              
            ),
            Container(
              padding:EdgeInsets.only(left:20) ,
              alignment: Alignment.centerLeft,
              height:65 ,
              width: double.infinity,
              color: Color(0xffb08968),
              child: Text('Phrase',style: TextStyle(
                color: Colors.white,
                fontSize: 21,
              ),),
              
            )
          ],
        ),

      );
  }
}

