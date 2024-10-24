import 'package:flutter/material.dart';
import 'package:my_nectar_app/constants.dart';

abstract class Styles {
  static const textStyle48 = TextStyle(
    color: Colors.white,
    fontSize: 48,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,
    // fontStyle: FontStyle.normal););
  );
  static const textStyle26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  static const textStyle16 = TextStyle(
    color: Colors.white70,
    fontSize: 16,
    decoration: TextDecoration.none, // This removes the underline
  );
  static const textStyle14 = TextStyle(
    color:kGreyColor,
    fontSize: 14,
    decoration: TextDecoration.none, // This removes the underline
  );
}
