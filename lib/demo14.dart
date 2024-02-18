import 'package:flutter/material.dart';
// demo14 AspectRatio布局
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("demo14"),
        backgroundColor: Colors.purple,
      ),
      body: const AspectRatioTest(),
    ),
  ));
}

class AspectRatioTest extends StatelessWidget{
  const AspectRatioTest({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/2,
      child: Container(
        color: Colors.limeAccent,
      ),
    );
  }

}