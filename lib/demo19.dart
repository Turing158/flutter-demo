import 'package:flutter/material.dart';
// demo19 特殊路由
void main(){
  runApp(MaterialApp(
    home: const HomePage(),
    routes: {
      "route1":(context) => const Router1Page(),
      "route2":(context) => const Router2Page()
    },
  ));
}


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          ListTile(
            title: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(
                    context,
                    "route1",
                    arguments: [
                      "TestText",
                      123
                    ]
                );
              },
              child: const Text("Route1"),
            ),
          ),
          ListTile(
            title: ElevatedButton(
              onPressed: ()async{
                var result = await Navigator.pushNamed(
                    context,
                    "route2"
                );
                print("返回值：$result");
              },
              child: const Text("Route2"),
            ),
          )
        ],
      ),
    );
  }
}



class Router1Page extends StatelessWidget{
  const Router1Page({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments;
    List<String> argList = args.toString().substring(1,args.toString().length-1).split(",");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page1111"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          children: [
            Text("text:${argList[0]}"),
            Text("num:${argList[1]}"),
          ],
        ),
      ),
    );
  }
}



class Router2Page extends StatelessWidget{
  const Router2Page({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page2222"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context, "我是个返回值");
          },
          child: const Text("back"),
        ),
      ),
    );
  }
}