import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen14.dart';
import 'Screen16.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen15 extends StatelessWidget {
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
              'नासै रोग हरे सब पीरा\nजपत निरन्तर हनुमत बीरा |\nसंकट तें हनुमान छुड़ावै\nमन क्रम बचन ध्यान जो लावै ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen14()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen16()),
            );
          },
          pageTextNumber: '15'),
    );
  }
}
