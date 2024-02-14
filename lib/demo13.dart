import 'package:flutter/material.dart';
// demo13 Stack堆叠
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("demo13"),
        backgroundColor: Colors.greenAccent,
      ),
      body: const StackTest(),
    ),
  ));
}

class StackTest extends StatelessWidget{
  const StackTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Stack(
        alignment: Alignment.topCenter,
        children: [
          Text("test1"),
          Text("test2"),
          Text("test3"),
          Text("test4"),
          Text("test5"),
          Text("test6"),
          Text("test7"),
        ],
      ),
    );
  }
}