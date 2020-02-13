import 'package:flutter/material.dart';

class FormValue extends StatelessWidget{
  final String _text;

  FormValue(this._text);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Text(
        _text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Color.fromRGBO(80, 80, 80, 1),
        ),
      ),
    ]);
  }
}