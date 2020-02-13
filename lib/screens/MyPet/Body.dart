import 'package:flutter/material.dart';
import './PetInfo.dart';
import './Vaccination.dart';
import './Notifications.dart';

class Body extends StatelessWidget {
  final int _index;
  Body(this._index);

  @override
  Widget build(BuildContext context) {
    final List<Widget> listOptions = <Widget>[
      PetInfo(),
      Vaccination(),
      Notifications(),
    ];

    return listOptions.elementAt(_index);
  }
}