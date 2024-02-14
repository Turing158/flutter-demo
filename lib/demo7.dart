import 'package:flutter/material.dart';
import 'package:demo/icon.dart';
//demo7 图标
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:const Text("demo7"),
        backgroundColor: Colors.indigo,
      ),
      body: const Demo7(),
    ),
  ));
}

class Demo7 extends StatelessWidget{
  const Demo7({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: Column(
        children: [
          Text("Flutter官方图标"),
          Icon(
            Icons.add,
          ),
          Icon(
            Icons.add_box_rounded,
            color: Colors.lightBlueAccent,
          ),
          Icon(
            Icons.accessibility_rounded,
            color: Colors.green,
            size: 30,
          ),
          Text("通过阿里云下载到的ttf图标[有问题暂时不理]"),
          Icon(
            SelfIcon.set,
            color: Colors.green,
            size: 30,
          ),
        ],
      ),
    );
  }}