import 'package:flutter/material.dart';
//demo10 线性布局
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:const Text("demo10"),
        backgroundColor: Colors.tealAccent,
      ),
      body: const ColumnTest(),
    ),
  ));
}

class RowTest extends StatelessWidget{
  const RowTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_balance_wallet,color: Colors.green,size: 50,),
          Icon(Icons.balance,color: Colors.brown,size: 50,),
          Icon(Icons.camera,color: Colors.lightBlueAccent,size: 50,),
          Icon(Icons.data_object,color: Colors.orange,size: 50,),
          Icon(Icons.egg,color: Colors.cyan,size: 50,),
          Icon(Icons.facebook_outlined,color: Colors.greenAccent,size: 50,),
          Icon(Icons.gamepad,color: Colors.deepPurple,size: 50,),
          Icon(Icons.handshake_outlined,color: Colors.lightGreen,size: 50,),
          Icon(Icons.image_rounded,color: Colors.deepOrange,size: 50,),
        ],
      ),
    );
  }
}

class ColumnTest extends StatelessWidget{
  const ColumnTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child:const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.account_balance_wallet,color: Colors.green,size: 50,),
          Icon(Icons.balance,color: Colors.brown,size: 50,),
          Icon(Icons.camera,color: Colors.lightBlueAccent,size: 50,),
          Icon(Icons.data_object,color: Colors.orange,size: 50,),
          Icon(Icons.egg,color: Colors.cyan,size: 50,),
          Icon(Icons.facebook_outlined,color: Colors.greenAccent,size: 50,),
          Icon(Icons.gamepad,color: Colors.deepPurple,size: 50,),
          Icon(Icons.handshake_outlined,color: Colors.lightGreen,size: 50,),
          Icon(Icons.image_rounded,color: Colors.deepOrange,size: 50,),
        ],
      ),
    );
  }
}
