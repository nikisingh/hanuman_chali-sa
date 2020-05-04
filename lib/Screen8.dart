import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen7.dart';
import 'Screen9.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen8 extends StatelessWidget {
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
              'लाय सजीवन लखन जियाये\nश्री रघुबीर हरषि उर लाये |\nरघुपति कीन्ही बहुत बड़ाई\nतुम मम प्रिय भरतहि सम भाई ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen7()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen9()),
            );
          },
          pageTextNumber: '8'),
    );
  }
}
