import 'package:flutter/material.dart';
import '../../components/FormFieldLabel.dart';
import '../../components/FormValue.dart';
import '../../models/pet_data.dart';

class Body extends StatelessWidget {
  Widget renderRow(BuildContext context, PetData data) {
    final String name = data.name;
    final String type = data.type;

    return Container(
      padding: EdgeInsets.only(bottom: 25),
      child: Card(
        child: GestureDetector(
          child: Row(children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FormFieldLabel(type),
                FormValue(name)
              ],
            ),
          ]),
          onTap: () {
            Navigator.pushNamed(context, '/my-pet', arguments: data);
          }
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final PetData max = new PetData('1', 'dog', 'Max', 'Labrador');
    final PetData manya = new PetData('1', 'cat', 'Manya', 'Street fighter');
    return ListView(
      children: <Widget>[
        Card(child:
          ListTile(
            leading: Image.network(
              'https://as1.ftcdn.net/jpg/00/60/60/98/500_F_60609823_c96JYj0qYurgfxeHjNfe7H9pSGTReEw7.jpg',
              width: 50.0,
              height: 50.0,
            ),
            title: Text('Max'),
            onTap: () {
              Navigator.pushNamed(context, '/my-pet', arguments: max);
            },
          ),
        ),
        Card(child:
          ListTile(
            leading: Image.network(
              'https://img.huffingtonpost.com/asset/5dcc613f1f00009304dee539.jpeg?cache=QaTFuOj2IM&ops=crop_834_777_4651_2994%2Cscalefit_720_noupscale&format=webp',
              width: 50.0,
              height: 50.0,
            ),
            title: Text('Manya'),
            onTap: () {
              Navigator.pushNamed(context, '/my-pet', arguments: manya);
            },
          ),
        ),
        Card(child:
          ListTile(
            leading: Icon(Icons.pets, color: Colors.blue[800]),
            title: Text('Doggy'),
            onTap: () {
              Navigator.pushNamed(context, '/my-pet', arguments: max);
            },
          ),
        ),
      ],
    );
  }
}
