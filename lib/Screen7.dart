import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen6.dart';
import 'Screen8.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: SideMenu(),
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
              'सूक्ष्म रूप धरि सियहिं दिखावा\nबिकट रूप धरि लंक जरावा |\nभीम रूप धरि असुर सँहारे\nरामचन्द्र के काज सँवारे ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen6()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen8()),
            );
          },
          pageTextNumber: '7'),
    );
  }
}
