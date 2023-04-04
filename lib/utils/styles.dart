// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const Color SECONDARY = Color.fromRGBO(133, 144, 175, 1);
const Color PRIMARY = Color.fromRGBO(20, 20, 20, 1);
const Color EXTRA = Color.fromRGBO(244, 247, 255, 1);

const BoxShadow BOXSHODOW = BoxShadow(
  color: Color.fromARGB(132, 0, 0, 0),
  offset: Offset(
    1.0,
    2.0,
  ),
  blurRadius: 2.0,
  spreadRadius: 1.0,
);

final ButtonStyle SECONDARYBUTTONSTYLE = TextButton.styleFrom(
  minimumSize: const Size.fromHeight(50),
  padding: const EdgeInsets.all(16.0),
  foregroundColor: SECONDARY,
  textStyle: TEXTSTYLESECONDARY,
);



const TextStyle BOLDSTYLESECONDARY = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30,
  color: SECONDARY,
);


const TextStyle TEXTSTYLESECONDARY = TextStyle(
  fontSize: 20,
  color: SECONDARY,
);


const TextStyle TEXTSTYLESECONDARYSMALL = TextStyle(
  fontSize: 15,
  color: SECONDARY,
);

const TextStyle TEXTSTYLEPRIMARYSMALL = TextStyle(
  fontSize: 15,
  color: PRIMARY,
);



const TextStyle TEXTSTYLEPRIMARYMEDIUMBOLD = TextStyle(
  fontSize: 17,
  color: PRIMARY,
  fontWeight: FontWeight.bold,
);

const TextStyle TEXTSTYLEPRIMARYMEDIUM = TextStyle(
  fontSize: 17,
  color: PRIMARY,
);

final BorderRadius BORDERRADIUS = BorderRadius.circular(4);
