import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen17.dart';
import 'Screen19.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen18 extends StatelessWidget {
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
              'अष्टसिद्धि नौ निधि के दाता\nअस बर दीन जानकी माता |\nराम रसायन तुम्हरे पासा\nसदा रहो रघुपति के दासा ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen17()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen19()),
            );
          },
          pageTextNumber: '18'),
    );
  }
}
