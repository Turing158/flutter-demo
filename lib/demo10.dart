import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:const Text("demo10"),
        backgroundColor: Colors.tealAccent,
      ),
      body: const RowTest(),
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
      color: Colors.teal,
      child: const Row(
        children: [
          Icon(Icons.g_translate,color: Colors.deepOrange,),
          Icon(Icons.unarchive,color: Colors.brown,),
        ],
      ),
    );
  }

}