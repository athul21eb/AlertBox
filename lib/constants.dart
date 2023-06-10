import 'package:flutter/material.dart';

const TextStyle textStyle = TextStyle(
  color: Colors.black,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
final ButtonStyle buttonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(
    Colors.white,
  ),
  padding: MaterialStateProperty.all(
    const EdgeInsets.all(10),
  ),
  elevation: MaterialStateProperty.all(0),
  shape: MaterialStateProperty.all(
    const RoundedRectangleBorder(),
  ),
);
