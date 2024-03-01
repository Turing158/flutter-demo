import 'package:flutter/material.dart';
// demo21 监控路由
void main(){
  runApp(MaterialApp(
    navigatorObservers: [DemoNO()],
    home: const HomePage(),
    routes: {
      "test1": (context) => const Test1Page(),
      "test2": (context) => const Test2Page(),
    },
  ));
}

class DemoNO extends NavigatorObserver{
  @override
  void didPush(Route route, Route? previousRoute) {
    var name = route.settings.name;
    print("$name页面被加入栈");
    super.didPush(route, previousRoute);
  }
  @override
  void didPop(Route route, Route? previousRoute) {
    var name = route.settings.name;
    print("$name页面被移出栈");
    super.didPop(route, previousRoute);
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "test1");
              },
              child: const Text("test1")
          ),
          Container(height: 5,),
          ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "test2");
              },
              child: const Text("test2")
          ),

        ],
      ),
    );
  }
}

class Test1Page extends StatelessWidget{
  const Test1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test1111Page"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(),
    );
  }
}



class Test2Page extends StatelessWidget{
  const Test2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test2222Page"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(),
    );
  }
}