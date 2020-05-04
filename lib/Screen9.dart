import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen8.dart';
import 'Screen10.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen9 extends StatelessWidget {
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
            'images/hanuman_PNG1.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
          text:
              'सहस बदन तुम्हरो जस गावैं\nअस कहि श्रीपति कण्ठ लगावैं |\nसनकादिक ब्रह्मादि मुनीसा\nनारद सारद सहित अहीसा ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen8()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen10()),
            );
          },
          pageTextNumber: '9'),
    );
  }
}
