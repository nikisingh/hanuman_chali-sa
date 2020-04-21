import 'package:flutter/material.dart';
import 'Screen19.dart';
import 'Screen21.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen20 extends StatelessWidget {
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
              'और देवता चित्त न धरई\nहनुमत सेइ सर्ब सुख करई\nसङ्कट कटै मिटै सब पीरा\nजो सुमिरै हनुमत बलबीरा',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen19()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen21()),
            );
          },
          pageTextNumber: '20'),
    );
  }
}
