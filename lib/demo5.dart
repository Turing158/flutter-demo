import 'package:flutter/material.dart';
// demo5 样式
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("demo5"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: demo5Container(),
    ),
  ));
}

class demo5Container extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        width: 200,
        height: 400,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.blueAccent,Colors.limeAccent],
          ),
          boxShadow:const [
            BoxShadow(
              color: Colors.lightGreen,
              offset: Offset(2, 2),
              blurRadius: 10.0
            )
          ],
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: const Text(
            "aaa",
          style: TextStyle(
            decoration: TextDecoration.none,
            decorationStyle: TextDecorationStyle.dotted,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

}