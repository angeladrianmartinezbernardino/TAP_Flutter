import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'Arial',
);

final kLabelStyle = TextStyle(
  color: const Color.fromARGB(255, 107, 33, 33),
  fontWeight: FontWeight.bold,
  fontFamily: 'Arial',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color.fromARGB(255, 28, 175, 82),
  borderRadius: BorderRadius.circular(100.0),
  boxShadow: [
    BoxShadow(
      color: Color.fromARGB(0, 0, 0, 0),
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
