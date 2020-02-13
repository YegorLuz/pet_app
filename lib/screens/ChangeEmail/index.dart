import 'package:flutter/material.dart';
import 'Header.dart';
import 'Body.dart';
import '../../components/AccountMenu.dart';

class ChangeEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Body(),
      drawer: Drawer(
        child: AccountMenu('/change-email'),
      ),
    );
  }
}