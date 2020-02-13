import 'package:flutter/material.dart';

class BodyWrapper extends StatelessWidget{
  final Widget _child;

  BodyWrapper(this._child);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Card(
        elevation: 10,
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: _child,
        ),
      ),
    );
  }
}