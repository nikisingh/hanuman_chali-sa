import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen12.dart';
import 'Screen14.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen13 extends StatelessWidget {
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
              'राम दुआरे तुम रखवारे\nहोत न आज्ञा बिनु पैसारे |\nसब सुख लहै तुम्हारी सरना\nतुम रच्छक काहू को डर ना ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen12()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen14()),
            );
          },
          pageTextNumber: '13'),
    );
  }
}
