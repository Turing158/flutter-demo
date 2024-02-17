import 'dart:math';

import 'package:flutter/material.dart';
// demo13 Stack堆叠
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("demo13"),
        backgroundColor: Colors.greenAccent,
      ),
      body: const SpecialBtn(),
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


class StackAndAlign extends StatelessWidget{
  const StackAndAlign({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: const Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text("test1"),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text("test2"),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text("test3"),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("test4"),
          ),
          Align(
            alignment: Alignment.center,
            child: Text("test5"),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text("test6"),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text("test7"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text("test8"),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text("test9"),
          ),
        ],
      ),
    );
  }

}


class TabBarSelf extends StatelessWidget{
  const TabBarSelf({super.key});
  List<Widget> getLists(){
    List<Widget> lists = [];
    for(int i = 0;i<100;i++){
      lists.add(
          ListTile(
            leading: Text("[${i+1}]"),
            title: Text("标题${i+1}"),
            subtitle: Text("数据${i+1}"),
            trailing: Text("|${i+1}|"),
            tileColor: Color.fromARGB(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1),
          )
      );
    }
    return lists;
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: getLists(),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: double.infinity,
            height: 40,
            color: Colors.lightBlue,
            child: const Center(
              child: Text("我是个导航栏"),
            ),
          ),
        ),
      ],
    );
  }
}



class StackAndPositioned extends StatelessWidget{
  const StackAndPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            child: Text("top0,left0"),
            top: 0,
            left: 0,
          ),
          Positioned(
            child: Text("top100,left0"),
            top: 100,
            left: 0,
          ),
          Positioned(
            child: Text("top0,left100"),
            top: 0,
            left: 100,
          ),
          Positioned(
            child: Text("top100,left100"),
            top: 100,
            left: 100,
          ),
          Positioned(
            child: Text("top0,right0"),
            top: 0,
            right: 0,
          ),
          Positioned(
            child: Text("bottom0,left0"),
            bottom: 0,
            left: 0,
          ),
          Positioned(
            child: Text("bottom0,right0"),
            bottom: 0,
            right: 0,
          ),
        ],
      ),
    );
  }
}


class SpecialBtn extends StatelessWidget{
  const SpecialBtn({super.key});
  List<Widget> getLists(){
    List<Widget> lists = [];
    for(int i = 0;i<100;i++){
      lists.add(
          ListTile(
            leading: Text("[${i+1}]"),
            title: Text("标题${i+1}"),
            subtitle: Text("数据${i+1}"),
            trailing: Text("|${i+1}|"),
            tileColor: Color.fromARGB(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1),
          )
      );
    }
    return lists;
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: getLists(),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: Container(
            width: 40,
            height: 40,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Colors.limeAccent),
                padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
              ),
              onPressed: () {
                print("你点击了按钮");
              },
              child: const Text("Btn"),
            ),
          )
        ),
      ],
    );
  }
}