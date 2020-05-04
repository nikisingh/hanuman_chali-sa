import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen20.dart';
import 'Screen22.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen21 extends StatelessWidget {
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
              'जय जय जय हनुमान गोसाईं\nकृपा करहु गुरुदेव की नाईं |\nजो सत बार पाठ कर कोई\nछूटहि बन्दि महा सुख होई ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen20()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen22()),
            );
          },
          pageTextNumber: '21'),
    );
  }
}
