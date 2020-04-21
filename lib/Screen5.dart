import 'package:flutter/material.dart';
import 'Screen4.dart';
import 'Screen6.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black, centerTitle: true, title: kAppBarText),
      body: ScreenComponents(
          size: size,
          image: Image.asset(
            'images/hanuman_PNG1.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
          text:
              'हाथ बज्र औ ध्वजा बिराजे\n काँधे मूँज जनेउ साजे\n शंकर सुवन केसरी नंदन\n तेज प्रताप महा जग वंदन',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen4()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen6()),
            );
          },
          pageTextNumber: '5'),
    );
  }
}
