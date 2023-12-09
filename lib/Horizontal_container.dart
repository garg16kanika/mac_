import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget HorizontalContainer(String name) {
  return Container(
    height: 28,
    width: 85,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 52, 51, 51),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.white),
    ),
    child: Center(
      child: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
