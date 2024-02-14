import 'package:flutter/material.dart';
// demo6 图片
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("demo6"),
        backgroundColor: Colors.lightGreen,
      ),
      body: const Demo6(),
    ),
  ));
}


class Demo6 extends StatelessWidget{
  const Demo6({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Image.asset(
        "img/head.jpg",
        alignment: Alignment.center,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
        color: Colors.lightBlueAccent,
        colorBlendMode: BlendMode.dstOver,
        repeat: ImageRepeat.repeat,
      ),
      //这个网络加载图片有点问题
      // child: Image.network(
      //     "https://www.baidu.com/img/flexible/logo/pc/result.png",
      //   width: 300,
      //   height: 150,
      //   fit: BoxFit.fill,
      // ),
    );
  }
}
