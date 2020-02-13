import 'package:flutter/material.dart';
import '../../models/pet_data.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String _title;

  @override
  final Size preferredSize;

  Header(this._title, {Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  Widget build(BuildContext context) {
    final PetData args = ModalRoute.of(context).settings.arguments;

    return AppBar(
      title: Center(child: Text(_title)),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.edit),
          tooltip: 'Edit',
          onPressed: () {
            Navigator.pushNamed(context, '/edit-my-pet', arguments: args);
          },
        )
      ],
    );
  }
}