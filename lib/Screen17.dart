import 'package:flutter/material.dart';
import 'Screen16.dart';
import 'Screen18.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen17 extends StatelessWidget {
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
              'चारों जुग परताप तुम्हारा\nहै परसिद्ध जगत उजियारा\nसाधु सन्त के तुम रखवारे\nअसुर निकन्दन राम दुलारे',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen16()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen18()),
            );
          },
          pageTextNumber: '17'),
    );
  }
}
