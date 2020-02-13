import 'package:flutter/material.dart';
import 'Header.dart';
import 'Body.dart';

class MyPets extends StatefulWidget {
  MyPets({Key key}) : super(key: key);

  @override
  _MyPetsState createState() => _MyPetsState();
}

class _MyPetsState extends State<MyPets> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch(index) {
      case 0: {
        Navigator.pushNamed(context, '/account');
        break;
      }
      case 1: {
        Navigator.pushNamed(context, '/');
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('My Account'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Logout'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}