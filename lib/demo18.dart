import 'package:flutter/material.dart';
// demo18 使用路由
void main(){
  runApp(const MaterialApp(
    home: DemoPage(),
  ));
}

class DemoPage extends StatelessWidget{
  const DemoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("demoPage首页"),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView(
        children: [
          ListTile(
            title: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return const NextPage();
                    }
                ));
              },
              child: const Text("下一页面"),
            ),
          ),
          ListTile(
            title: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return AttrPage(text: "TestText", person: Person("jack",10));
                    }
                ));
              },
              child: const Text("带参数入页面"),
            ),
          ),
          ListTile(
            title: ElevatedButton(
              onPressed: ()async{
                var result = await Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return const BackAttrPage();
                    }
                ));
                print("返回值：$result");
              },
              child: const Text("带返回值的页面"),
            ),
          ),
        ],
      )
    );
  }
}


class NextPage extends StatelessWidget{
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NextPage"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text("Welcome!"),
      ),
    );
  }
}



class Person{
  String name;
  int age;
  Person(this.name,this.age);
  @override
  String toString() {
    return "{name:$name,age:$age}";
  }
}
class AttrPage extends StatelessWidget{
  final String text;
  final Person person;
  const AttrPage({
    super.key,
    required this.text,
    required this.person
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AttrPage"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Text("text:$text"),
            Text("person:${person.toString()}")
          ],
        ),
      ),
    );
  }
}



class BackAttrPage extends StatelessWidget{
  const BackAttrPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BackAttrPage"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context,"hello world");
          },
          child: const Text("返回"),
        ),
      ),
    );
  }
  
}