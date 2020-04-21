import 'package:flutter/material.dart';
import 'Screen18.dart';
import 'Screen20.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black, centerTitle: true, title: kAppBarText),
      body: ScreenComponents(
          size: size,
          image: Image.asset(
            'images/hanuman_PNG3.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
          text:
              'तुह्मरे भजन राम को पावै\nजनम जनम के दुख बिसरावै\nअन्त काल रघुबर पुर जाई\nजहाँ जन्म हरिभक्त कहाई',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen18()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen20()),
            );
          },
          pageTextNumber: '19'),
    );
  }
}
