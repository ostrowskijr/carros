

import 'package:flutter/material.dart';

class appButton extends StatelessWidget {
  String text;
  Function onPressed;

  appButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        onPressed: onPressed,
      ),
    );;
  }

}
