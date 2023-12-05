import 'package:flutter/material.dart';

const kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'Arial',
);

const kLabelStyle = TextStyle(
  color: Color.fromARGB(255, 107, 33, 33),
  fontWeight: FontWeight.bold,
  fontFamily: 'Arial',
);

final kBoxDecorationStyle = BoxDecoration(
  color: const Color.fromARGB(255, 28, 175, 82),
  borderRadius: BorderRadius.circular(100.0),
  boxShadow: const [
    BoxShadow(
      color: Color.fromARGB(0, 0, 0, 0),
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);