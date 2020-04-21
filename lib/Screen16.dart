import 'package:flutter/material.dart';
import 'Screen15.dart';
import 'Screen17.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black, centerTitle: true, title: kAppBarText),
      body: ScreenComponents(
          size: size,
          image: Image.asset(
            'images/hanuman_PNG4.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
          text:
              'सब पर राम तपस्वी राजा\nतिन के काज सकल तुम साजा\nऔर मनोरथ जो कोई लावै\nसोई अमित जीवन फल पावै',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen15()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen17()),
            );
          },
          pageTextNumber: '16'),
    );
  }
}
