import 'package:flutter/material.dart';
import '../../models/pet_data.dart';
import '../../helpers/list.dart';

class PetInfo extends StatelessWidget {
  Widget buildTitle(text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      ),
    );
  }

  Widget buildSubtitle(text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final PetData data = ModalRoute.of(context).settings.arguments;

    return ListView(
      children: <Widget>[
        Card(child: buildListItemWithSubtitle('Name', data.name)),
        Card(child: buildListItemWithSubtitle('Type', data.type)),
        Card(child: buildListItemWithSubtitle('Breed', data.breed)),
        Card(child: buildListItemWithSubtitle('Gender', '')),
        Card(child: buildListItemWithSubtitle('Date of Birth', '')),
        Card(child: buildListItemWithSubtitle('Weight', '')),
        Card(child: buildListItemWithSubtitle('Photo', '')),
      ],
    );
  }
}