import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:const Text("demo11"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: const FlexVer(),
    ),
  ));
}


class FlexHor extends StatelessWidget{
  const FlexHor({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(flex: 1,child: Container(color: Colors.brown,child: Icon(Icons.egg,color: Colors.teal,size: 50,),)),
        Expanded(flex: 2,child: Container(color: Colors.orange,child: Icon(Icons.facebook_outlined,color: Colors.teal,size: 50,),)),
        Expanded(flex: 3,child: Container(color: Colors.cyan,child: Icon(Icons.data_object,color: Colors.teal,size: 50,),)),
      ],
    );
  }
}

class FlexVer extends StatelessWidget{
  const FlexVer({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(flex: 1,child: Container(color: Colors.brown,child: Icon(Icons.egg,color: Colors.teal,size: 50,),)),
        Expanded(flex: 2,child: Container(color: Colors.orange,child: Icon(Icons.facebook_outlined,color: Colors.teal,size: 50,),)),
        Expanded(flex: 3,child: Container(color: Colors.cyan,child: Icon(Icons.data_object,color: Colors.teal,size: 50,),)),
      ],
    );
  }

}