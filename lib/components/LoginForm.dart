import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({ Key key }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate()) {
                    Navigator.popAndPushNamed(context, '/my-pets');
                  }
                },
                child: Text(
                    'Submit',
                  style: TextStyle(color: Colors.white),
                ),
                color: Color.fromRGBO(22, 138, 253, 1),
                highlightColor: Color.fromRGBO(33, 145, 255, 1),
                highlightElevation: 5.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
