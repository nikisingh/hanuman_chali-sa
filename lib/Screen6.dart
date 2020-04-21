import 'package:flutter/material.dart';
import 'Screen5.dart';
import 'Screen7.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black, centerTitle: true, title: kAppBarText),
      body: ScreenComponents(
          size: size,
          image: Image.asset(
            'images/hanuman_PNG2.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
          text:
              'बिद्यावान गुनी अति चातुर\nराम काज करिबे को आतुर\nप्रभु चरित्र सुनिबे को रसिया\nराम लखन सीता मन बसिया',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen5()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen7()),
            );
          },
          pageTextNumber: '6'),
    );
  }
}
