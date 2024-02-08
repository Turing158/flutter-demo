import 'package:flutter/material.dart';
//demo3-分离组件
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("demo3-分离组件"),
        backgroundColor: Colors.blue,
        titleTextStyle:const TextStyle(
          color: Colors.amber
        ),
      ),
      body: const HomeComp(),
    ),
  ));
}


class HomeComp extends StatelessWidget{
  const HomeComp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: Text(
        "Hello world",
        style: TextStyle(
          color: Colors.green,
        ),
      ),
    );
  }
}