import 'package:flutter/material.dart';
import '../components/FormFieldLabel.dart';
import '../components/FormValue.dart';

Widget renderRow(String label, String value) {
  return Container(
    padding: EdgeInsets.only(bottom: 25),
    child: Card(
      child: Row(children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FormFieldLabel(label),
            FormValue(value)
          ],
        ),
      ]),
    ),
  );
}