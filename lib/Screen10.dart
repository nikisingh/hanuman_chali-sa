import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen9.dart';
import 'Screen11.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen10 extends StatelessWidget {
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
            'images/hanuman_PNG2.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
          text:
              'जम कुबेर दिगपाल जहाँ ते\nकबि कोबिद कहि सके कहाँ ते |\n तुम उपकार सुग्रीवहिं कीन्हा\nराम मिलाय राज पद दीन्हा ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen9()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen11()),
            );
          },
          pageTextNumber: '10'),
    );
  }
}
