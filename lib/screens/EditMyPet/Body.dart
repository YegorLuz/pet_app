import 'package:flutter/material.dart';
import '../../models/pet_data.dart';
import '../../helpers/list.dart';

class Body extends StatelessWidget {
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