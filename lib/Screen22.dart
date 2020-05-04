import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen21.dart';
import 'Screen23.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen22 extends StatelessWidget {
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
              'जो यह पढ़ै हनुमान चालीसा\n होय सिद्धि साखी गौरीसा |\n तुलसीदास सदा हरि चेरा\n कीजै नाथ हृदय महँ डेरा ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen21()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen23()),
            );
          },
          pageTextNumber: '22'),
    );
  }
}
