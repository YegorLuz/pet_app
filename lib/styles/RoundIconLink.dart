import 'package:flutter/material.dart';

BoxDecoration roundIconLinkStyle (borderRadius, width, color) => BoxDecoration(
    borderRadius: BorderRadius.circular(borderRadius.toDouble()),
    border: Border.all(width: width.toDouble(), color: color)
);