import 'dart:math';
//demo9 网络布局
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:const Text("demo9"),
        backgroundColor: Colors.lime,
      ),
      body: const GridTest3(),
    ),
  ));
}


class GridTest1 extends StatelessWidget{
  const GridTest1({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.horizontal,
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      children: const <Widget>[
        Icon(Icons.account_balance_wallet,color: Colors.green,),
        Icon(Icons.balance,color: Colors.brown,),
        Icon(Icons.camera,color: Colors.lightBlueAccent,),
        Icon(Icons.data_object,color: Colors.orange,),
        Icon(Icons.egg,color: Colors.cyan,),
        Icon(Icons.facebook_outlined,color: Colors.greenAccent,),
        Icon(Icons.gamepad,color: Colors.deepPurple,),
        Icon(Icons.handshake_outlined,color: Colors.lightGreen,),
        Icon(Icons.image_rounded,color: Colors.deepOrange,),
      ],
    );
  }
}

class GridTest2 extends StatelessWidget{
  const GridTest2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
        maxCrossAxisExtent: 100,
      childAspectRatio: 1.0,
      children: const <Widget>[
        Icon(Icons.account_balance_wallet,color: Colors.green,),
        Icon(Icons.balance,color: Colors.brown,),
        Icon(Icons.camera,color: Colors.lightBlueAccent,),
        Icon(Icons.data_object,color: Colors.orange,),
        Icon(Icons.egg,color: Colors.cyan,),
        Icon(Icons.facebook_outlined,color: Colors.greenAccent,),
        Icon(Icons.gamepad,color: Colors.deepPurple,),
        Icon(Icons.handshake_outlined,color: Colors.lightGreen,),
        Icon(Icons.image_rounded,color: Colors.deepOrange,),
      ],
    );
  }
}

class GridTest3 extends StatelessWidget{
  const GridTest3({super.key});

  List<Widget> getList(){
    List<Widget> list = [];
    for(int i = 0;i<100;i++){
      list.add(Container(
        color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1),
        alignment: Alignment.center,
        child: Text(
            "${i+1}",
          style: TextStyle(
            color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1)
          ),
        ),
      ));
    }
    return list;
  }


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      children: getList(),
    );
  }

}