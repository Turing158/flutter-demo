import 'package:flutter/material.dart';
//demo4-Drawer
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
      drawer:const Drawer(
        backgroundColor: Colors.lightBlue,
        child: Center(
          child: Text(
            "DrawerTitle",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 30.0,
            ),
          ),
        )
      ),
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