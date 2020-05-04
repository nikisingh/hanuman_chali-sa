import 'package:flutter/material.dart';
import 'package:hanuman_chalisa/Constants.dart';

class ScreenComponents extends StatelessWidget {
  ScreenComponents(
      {this.size,
      this.image,
      this.text,
      this.prevFunction,
      this.nextFunction,
      this.pageTextNumber,
      this.nextFunctionName = 'Next'});

  final Size size;
  final Image image;
  final Function prevFunction;
  final Function nextFunction;
  final String text;
  final String pageTextNumber;
  final String nextFunctionName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Center(
            child: image,
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Text(text, textAlign: TextAlign.center, style: kFontText),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: prevFunction,
                child: Text('Prev'),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  pageTextNumber,
                  textAlign: TextAlign.center,
                ),
              ),
              RaisedButton(
                onPressed: nextFunction,
                child: Text(nextFunctionName),
              ),
            ],
          ),
        )
      ],
    );
  }
}
