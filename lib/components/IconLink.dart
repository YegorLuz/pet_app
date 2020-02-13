import 'package:flutter/material.dart';

class IconLink extends StatelessWidget{
  final String _url;
  final String _title;
  final IconData _icon;
  final Color _color;
  final double _size;
  final BoxDecoration _decoration;

  IconLink(this._url, this._title, this._icon, this._color, this._size, this._decoration);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(child:
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, _url);
          },
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  decoration: _decoration,
                  child: Icon(
                    _icon,
                    color: _color,
                    size: _size,
                  ),
                ),
              ),
              Center(child: Text(_title)),
            ],
          )
        ),
      ),
    ]);
  }
}