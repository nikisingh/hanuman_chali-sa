import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen2.dart';
import 'Screen4.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen3 extends StatelessWidget {
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
              'जय हनुमान ज्ञान गुन सागर\n जय कपीस तिहुँ लोक उजागर |\n राम दूत अतुलित बल धामा\n अंजनि-पुत्र पवनसुत नामा ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen2()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen4()),
            );
          },
          pageTextNumber: '3'),
    );
  }
}
