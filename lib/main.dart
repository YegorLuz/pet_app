import 'package:flutter/material.dart';
import 'screens/Home/index.dart';
import 'screens/AccountInfo/index.dart';
import 'screens/MyPets/index.dart';
import 'screens/ChangeEmail/index.dart';
import 'screens/PasswordReset/index.dart';
import 'screens/Registration/index.dart';
import 'screens/MyPet/index.dart';
import 'screens/EditMyPet/index.dart';

void main() => runApp(
  new MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (BuildContext context) => Home(),
      '/account': (BuildContext context) => Account(),
      '/my-pets': (BuildContext context) => MyPets(),
      '/change-email': (BuildContext context) => ChangeEmail(),
      '/reset-password': (BuildContext context) => PasswordReset(),
      '/registration': (BuildContext context) => Registration(),
      '/my-pet': (BuildContext context) => MyPet(),
      '/edit-my-pet': (BuildContext context) => EditMyPet(),
    },
      /*
    theme: ThemeData(
      // Define the default brightness and colors.
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      accentColor: Colors.cyan[600],

      // Define the default font family.
      fontFamily: 'Georgia',

      // Define the default TextTheme. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: TextTheme(
        headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
      ),
    )
       */
  ),
);

