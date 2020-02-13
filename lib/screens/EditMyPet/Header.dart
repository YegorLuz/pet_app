import 'package:flutter/material.dart';
import '../../models/pet_data.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  Header({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final PetData args = ModalRoute.of(context).settings.arguments;

    return AppBar(
      title: Center(child: Text('edit ${args.name}')),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.save_alt),
          tooltip: 'Save',
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}