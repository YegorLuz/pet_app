import 'package:flutter/material.dart';
import '../../helpers/form_elements.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          renderRow('Old Email', 'test@test.com'),
          renderRow('New Email', 'test2@test.com'),
          renderRow('Repeat New Email', 'test2@test.com'),
        ],
      )
    ],);
  }
}
