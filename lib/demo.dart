import 'package:flutter/material.dart';
//demo1 Center
void main() {
  runApp(const Center(
    child: Text(
      "hello world!",
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.brown
      ),
    )
  ));
}