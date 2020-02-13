import 'package:flutter/material.dart';
import '../../helpers/form_elements.dart';
import '../../models/pet_data.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PetData data = ModalRoute.of(context).settings.arguments;

    return Row(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          renderRow('Notification 1', '10:15'),
          renderRow('Notification 2', '12:25'),
        ],
      )
    ],);
  }
}