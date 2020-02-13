import 'package:flutter/material.dart';
import 'Header.dart';
import 'Body.dart';
import '../../models/pet_data.dart';

class MyPet extends StatefulWidget {
  MyPet({Key key}) : super(key: key);

  @override
  _MyPetState createState() => _MyPetState();
}

class _MyPetState extends State<MyPet> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final PetData args = ModalRoute.of(context).settings.arguments;
    final String petId = args.id;
    final String petName = args.name;

    return Scaffold(
      appBar: Header('$petName ($petId)'),
      body: Body(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Info'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Vaccination'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Notifications'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}