import 'package:flutter/material.dart';
import '../../helpers/form_elements.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          renderRow('Old Password', ''),
          renderRow('New Password', ''),
          renderRow('Repeat New Password', ''),
        ],
      )
    ],);
  }
}
