import 'package:flutter/material.dart';
import 'Screen4.dart';
import 'Screen6.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Hanuman Chalisa',
          style: TextStyle(
              fontFamily: 'DancingScript',
              fontSize: 40.0,
              color: Colors.white,
              //fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.none),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Center(
              child: new Image.asset(
                'images/shree-hanuman-ji.jpg',
                width: size.width,
                height: size.height,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                'हाथ बज्र औ ध्वजा बिराजे\n काँधे मूँज जनेउ साजे\n शंकर सुवन केसरी नंदन\n तेज प्रताप महा जग वंदन',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 35.0,
                    color: Colors.black,
                    //fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen4()),
                    );
                  },
                  child: Text('Prev'),
                ),
                SizedBox(width: 100),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen6()),
                    );
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
