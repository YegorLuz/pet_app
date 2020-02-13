import 'package:flutter/material.dart';
import '../../helpers/form_elements.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          renderRow('display name', 'John Smith'),
          renderRow('country', 'USA'),
          renderRow('city', 'Los Angeles'),
          renderRow('address', 'Pupikova street 54a'),
          renderRow('postal code', '33333'),
        ],
      )
    ],);
  }
}
