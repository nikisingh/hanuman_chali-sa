import 'package:flutter/material.dart';
import 'Screen19.dart';
import 'Screen21.dart';

class Screen20 extends StatelessWidget {
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
                'और देवता चित्त न धरई\nहनुमत सेइ सर्ब सुख करई\nसङ्कट कटै मिटै सब पीरा\nजो सुमिरै हनुमत बलबीरा',
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
                      MaterialPageRoute(builder: (context) => Screen19()),
                    );
                  },
                  child: Text('Prev'),
                ),
                SizedBox(width: 100),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen21()),
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
