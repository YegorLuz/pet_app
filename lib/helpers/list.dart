import 'package:flutter/material.dart';

Widget buildListItemWithSubtitle(String title, String subtitle) {
  return ListTile(
    title: _buildTitle(title),
    subtitle: _buildSubtitle(subtitle),
  );
}

Widget _buildTitle(text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.black54,
    ),
  );
}

Widget _buildSubtitle(text) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
  );
}