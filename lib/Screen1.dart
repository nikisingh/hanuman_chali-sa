import 'package:flutter/material.dart';
import 'package:hanuman_chalisa/main.dart';
import 'Constants.dart';
import 'Screen2.dart';
import 'ScreenComponents.dart';

class Screen1 extends StatelessWidget {
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
              'श्रीगुरु चरन सरोज रज \n निजमनु मुकुरु सुधारि | \n बरनउँ रघुबर बिमल जसु \n जो दायकु फल चारि |',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen2()),
            );
          },
          pageTextNumber: '1'),
    );
  }
}
