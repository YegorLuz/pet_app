import 'package:flutter/material.dart';
import 'Header.dart';
import 'Body.dart';
import '../../components/AccountMenu.dart';

class PasswordReset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Body(),
      drawer: Drawer(
        child: AccountMenu('/reset-password'),
      ),
    );
  }
}