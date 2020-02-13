import 'package:flutter/material.dart';

class FormFieldLabel extends StatelessWidget {
  final String _text;

  FormFieldLabel(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(children: <Widget>[
        Text(
          _text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}