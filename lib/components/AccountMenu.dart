import 'package:flutter/material.dart';

class AccountMenu extends StatelessWidget {
  final String _currentRoute;

  AccountMenu(this._currentRoute);

  void _navigateTo(context, routePath) {
    if (_currentRoute == routePath) {
      Navigator.pop(context);
    } else {
      Navigator.popAndPushNamed(context, routePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text('Account menu'),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text('Info'),
          onTap: () {
            _navigateTo(context, '/account');
          },
        ),
        ListTile(
          title: Text('My Pets'),
          onTap: () {
            _navigateTo(context, '/my-pets');
          },
        ),
        ListTile(
          title: Text('Change Email'),
          onTap: () {
            _navigateTo(context, '/change-email');
          },
        ),
        ListTile(
          title: Text('Reset Password'),
          onTap: () {
            _navigateTo(context, '/reset-password');
          },
        ),
        ListTile(
          title: Text('Logout'),
          onTap: () {
            _navigateTo(context, '/');
          },
        ),
      ],
    );
  }
}