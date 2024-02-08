import 'package:flutter/material.dart';
// demo2-MaterialApp and Scaffold
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "demo2-MaterialApp and Scaffold",
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
              color: Colors.greenAccent,
              fontSize: 30.0
          ),
        ),
      ),
    ),
    theme: ThemeData.dark()
  ));
}