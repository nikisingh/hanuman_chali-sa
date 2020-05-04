import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen12.dart';
import 'Screen10.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen11 extends StatelessWidget {
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
              'तुम्हरो मंत्र बिभीषन माना\nलंकेश्वर भए सब जग जाना |\nजुग सहस्र जोजन पर भानु\nलील्यो ताहि मधुर फल जानू ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen10()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen12()),
            );
          },
          pageTextNumber: '11'),
    );
  }
}
