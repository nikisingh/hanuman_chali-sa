import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'Screen11.dart';
import 'Screen13.dart';
import 'ScreenComponents.dart';
import 'Constants.dart';

class Screen12 extends StatelessWidget {
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
              'प्रभु मुद्रिका मेलि मुख माहीं\nजलधि लाँघि गये अचरज नाहीं |\nदुर्गम काज जगत के जेते\nसुगम अनुग्रह तुम्हरे तेते ||',
          prevFunction: () {
            //Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen11()),
            );
          },
          nextFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Screen13()),
            );
          },
          pageTextNumber: '12'),
    );
  }
}
