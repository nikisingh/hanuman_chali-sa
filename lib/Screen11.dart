import 'package:flutter/material.dart';
import 'package:hanuman_chalisa/main.dart';
import 'Screen10.dart';
import 'Screen12.dart';

class Screen11 extends StatelessWidget {
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
                'images/Bajrang-Bali.jpg',
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
                'शतुम्हरो मंत्र बिभीषन माना\nलंकेश्वर भए सब जग जाना\nजुग सहस्र जोजन पर भानु\nलील्यो ताहि मधुर फल जानू',
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
                    //Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen10()),
                    );
                  },
                  child: Text('Prev'),
                ),
                SizedBox(width: 100),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen12()),
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
