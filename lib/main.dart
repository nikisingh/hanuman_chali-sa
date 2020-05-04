import 'package:flutter/material.dart';
import 'package:hanuman_chalisa/HanumanChalisa.dart';
import 'NavDrawer.dart';
import 'Screen1.dart';
import 'Constants.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: SideMenu(),
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: kAppBarText,
        ),
        body: DoubleBackToCloseApp(
          child: HomePage1(),
          snackBar: const SnackBar(
            content: Text(
              'Tap back again to exit',
              style: kArtiFontText,
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isButtonPressedHC = false;
    bool isButtonPressedHA = false;
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 8,
                child: Image.asset('images/shree-hanuman-ji.jpg',
                    width: size.width, height: size.height, fit: BoxFit.cover),
              ),
              SizedBox(
                width: size.width,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Flexible(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                      elevation: 8.0,
                      color: isButtonPressedHC ? Colors.grey : Colors.white,
                      onPressed: () {
                        isButtonPressedHC = !isButtonPressedHC;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Screen1()),
                        );
                      },
                      child: Text(
                        'श्री हनुमान चालीसा',
                        style: kFontText,
                      )),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 50.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Flexible(
                flex: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 8.0,
                    color: isButtonPressedHA ? Colors.grey : Colors.white,
                    onPressed: () {
                      isButtonPressedHA = !isButtonPressedHA;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HanumanChalisa()),
                      );
                    },
                    child: Text(
                      'आरती',
                      style: kFontText,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
