import 'package:flutter/material.dart';
// demo20 监控不存在路由
void main(){
  runApp(MaterialApp(
    onGenerateRoute: (RouteSettings settings){
      var routeName = settings.name;
      if(routeName == "noReg"){
        print("如果没有注册在route里,但是依旧要Navigator.pushNamed访问，会显示这一行，route name：$routeName");
        return MaterialPageRoute(builder: (context){
          return const Route2Page();
        }
        );
      }
      return null;
    },
    onUnknownRoute: (RouteSettings settings){
      print("访问了不存在的页面,");
      return MaterialPageRoute(builder: (context){
        return const NoExitPage();
      });
    },
    home: const HomePage(),
  ));
}


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          ListTile(
            title: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return const Route1Page();
                    }
                ));
              },
              child: const Text("route1"),
            ),
          ),
          ListTile(
            title: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "noReg");
              },
              child: const Text("route2"),
            ),
          ),
          ListTile(
            title: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "noExitPage");
              },
              child: const Text("route3"),
            ),
          )
        ],
      ),
    );
  }
}


class Route1Page extends StatelessWidget{
  const Route1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("route1"),
        backgroundColor: Colors.amberAccent,
      ),
      body: const Center(
        child: Text("none"),
      ),
    );
  }
}


class Route2Page extends StatelessWidget{
  const Route2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("route2"),
        backgroundColor: Colors.amberAccent,
      ),
      body: const Center(
        child: Text("没在routes注册，也能通过Navigator.pushNamed访问"),
      ),
    );
  }
}


class NoExitPage extends StatelessWidget{
  const NoExitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("页面不存在"),
        backgroundColor: Colors.amberAccent,
      ),
      body: const Center(
        child: Text("访问了不存在的页面！"),
      ),
    );
  }
}