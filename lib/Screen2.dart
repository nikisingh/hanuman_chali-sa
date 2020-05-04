import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen1.dart';
import 'Screen3.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen2 extends StatelessWidget {
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
              'बुद्धिहीन तनु जानिके, \n सुमिरौं पवन-कुमार | \n बल बुधि बिद्या देहु मोहिं \n  हरहु कलेस बिकार ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen1()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen3()),
            );
          },
          pageTextNumber: '2'),
    );
  }
}
