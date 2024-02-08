import 'package:flutter/material.dart';
// demo2-MaterialApp
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "标题title",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Hello world!",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.brown,
              fontSize: 30.0
          ),
        ),
      ),
    ),
  ));
}