import 'package:flutter/material.dart';
// demo15 按钮
void main(){
  runApp(const CustomApp());
}

class CustomApp extends StatelessWidget{
  const CustomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("demo15"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: const BtnTest4(),
      ),
    );
  }
}


class BtnTest extends StatelessWidget{
  const BtnTest({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: [
        ElevatedButton(onPressed: (){}, child: const Text("普通按钮")),
        TextButton(onPressed: (){}, child: const Text("文本按钮")),
        OutlinedButton(onPressed: (){}, child: const Text("边框按钮")),
        IconButton(onPressed: (){}, icon: const Icon(Icons.gamepad_outlined)),
        ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.tag_faces), label: const Text("普通按钮[有图标]")),
        TextButton.icon(onPressed: (){}, icon: const Icon(Icons.tag_faces), label: const Text("文本按钮[有图标]")),
        OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.tag_faces), label: const Text("边框按钮[有图标]")),
      ],
    );
  }
}

class BtnTest1 extends StatelessWidget{
  const BtnTest1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        onPressed: (){},
        child: const Text("修改宽高"),
      ),
    );
  }
}


class BtnTest2 extends StatelessWidget{
  const BtnTest2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        onPressed: (){},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
          foregroundColor: MaterialStateProperty.all(Colors.purple),
          elevation: MaterialStateProperty.all(10),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )),
        ),
        child: const Text("修改各种属性"),
      ),
    );
  }
}

class BtnTest3 extends StatelessWidget{
  const BtnTest3({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: ElevatedButton(
        onPressed: (){},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const CircleBorder(side: BorderSide(color: Color.fromARGB(0, 0, 0, 0))
          )),
        ),
        child: const Text("圆形按钮"),
      ),
    );
  }
}

class BtnTest4 extends StatelessWidget{
  const BtnTest4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: OutlinedButton(
        onPressed: (){},
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            const BorderSide(width: 1,color: Colors.brown)
          ),
        ),
        child: const Text("修改边框"),
      ),
    );
  }
}
