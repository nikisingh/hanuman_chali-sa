import 'package:flutter/material.dart';
import 'Screen1.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage1());
  }
}

class HomePage1 extends StatelessWidget {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen1()),
                  );
                },
                child: new Image.asset('images/shree-hanuman-ji.jpg',
                    // Image.network(
                    //'https://galleryofgod.files.wordpress.com/2014/03/wpid-god-hanuman-hd-wallpapers-jpg.jpeg',
                    width: size.width,
                    height: size.height,
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                'Hanuman Chalisa',
                style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.none),
              ),
            )
          ],
        ),
      ),
    );
  }
}
