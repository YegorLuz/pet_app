import 'package:flutter/material.dart';
import '../../helpers/form_elements.dart';
import '../../models/pet_data.dart';

class Vaccination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PetData data = ModalRoute.of(context).settings.arguments;

    return Row(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          renderRow('Vaccinations 1', '10.11.2019'),
          renderRow('Vaccinations 2', '18.01.2020'),
        ],
      )
    ],);
  }
}