import 'package:flutter/material.dart';
import 'package:hanuman_chalisa/main.dart';
import 'Screen22.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen23 extends StatelessWidget {
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
              'पवनतनय संकट हरन\n मंगल मूरति रूप\nराम लखन सीता सहित\n हृदय बसहु सुर भूप\n || समाप्त ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen22()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          pageTextNumber: '23'),
    );
  }
}
