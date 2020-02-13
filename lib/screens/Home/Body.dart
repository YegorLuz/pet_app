import 'package:flutter/material.dart';
import 'package:pet_app/components/LoginForm.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Login'),
          LoginForm(),
          Text('or'),
          FlatButton(
              child: Text('Register'),
              onPressed: () {
                Navigator.pushNamed(context, '/registration');
              }
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/account');
            },
            child: Text('Enter as a guest'),
          ),
        ],
      ),
    );
  }
}