import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  static const String _title = 'Registration';

  @override
  final Size preferredSize;

  Header({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: Text(_title)),
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