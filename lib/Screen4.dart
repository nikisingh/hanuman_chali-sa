import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen3.dart';
import 'Screen5.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen4 extends StatelessWidget {
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
            'images/hanuman_PNG4.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
          text:
              'महाबीर बिक्रम बजरंगी\n कुमति निवार सुमति के संगी |\n कंचन बरन बिराज सुबेसा\nकानन कुण्डल कुँचित केसा ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen3()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen5()),
            );
          },
          pageTextNumber: '4'),
    );
  }
}
