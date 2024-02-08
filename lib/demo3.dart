import 'package:flutter/material.dart';
//demo3
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "标题Title",
          textDirection: TextDirection.ltr
        ),
        backgroundColor: Colors.blue,
        titleTextStyle:const TextStyle(
          color: Colors.amber
        ),
      ),
      body: HomeComp(),
    ),
  ));
}


class HomeComp extends StatelessWidget{
  // const HomeComp ({Key ? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: Text(
        "Hello world",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.green,

        ),
      ),
    );
  }
  
}