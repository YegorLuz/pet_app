import 'package:flutter/material.dart';
import './Header.dart';
import './Body.dart';

class EditMyPet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Body(),
    );
  }
}