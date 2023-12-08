import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget HorizontalContainer(String name) {
  return Container(
    height: 28,
    width: 85,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.black),
    ),
    child: Center(
      child: Text(name),
    ),
  );
}
