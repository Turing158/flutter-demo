import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:const Text("demo9"),
        backgroundColor: Colors.lime,
      ),
      body: const GridTest(),
    ),
  ));
}

class GridTest extends StatelessWidget{
  const GridTest({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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