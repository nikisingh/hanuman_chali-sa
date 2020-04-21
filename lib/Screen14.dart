import 'package:flutter/material.dart';
import 'Screen13.dart';
import 'Screen15.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
              'आपन तेज सम्हारो आपै\nतीनों लोक हाँक तें काँपै\nभूत पिसाच निकट नहिं आवै\nमहाबीर जब नाम सुनावै',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen13()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen15()),
            );
          },
          pageTextNumber: '14'),
    );
  }
}
