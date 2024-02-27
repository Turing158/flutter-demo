import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("demo16"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const Test4(),
    ),
  ));
}

class Test1 extends StatelessWidget{
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Listener(
            onPointerDown: (event) => print("按下组件触发：$event"),
            child: const Text("按下组件触发"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title: Listener(
            onPointerMove: (event) => print("按下并在组件内移动触发：$event"),
            child: const Text("按下并在组件内移动触发"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title: Listener(
            onPointerHover: (event) => print("移动到组件触发：$event"),
            child: const Text("移动到组件触发"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title: Listener(
            onPointerUp: (event) => print("按下后松开才触发：$event"),
            child: const Text("按下后松开才触发"),
          ),
        ),
      ],
    );
  }
}


class Test2 extends StatelessWidget{
  const Test2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
         ListTile(
          title:GestureDetector(
            onTapDown: (e) => print("按下触发：$e"),
            child: const Text("按下触发"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title:GestureDetector(
            onTapUp: (e) => print("抬起触发：$e"),
            child: const Text("抬起触发"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title:GestureDetector(
            onTap: () => print("按下后抬起[与抬起触发不同，这个两个条件都得有]：======="),
            child: const Text("按下后抬起[与抬起触发不同，这个两个条件都得有]"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title:GestureDetector(
            onTapCancel: () => print("按下后取消[可移出组件触发]：======="),
            child: const Text("按下后取消[可移出组件触发]"),
          ),
        ),
      ],
    );
  }
}


class Test3 extends StatelessWidget{
  const Test3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title:GestureDetector(
            onDoubleTap: () => print("双击触发：======="),
            child: const Text("双击触发[必须按下抬起各两次]"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title:GestureDetector(
            onDoubleTapCancel: () => print("双击时取消[可移出组件触发]：======="),
            child: const Text("双击时取消[可移出组件触发]"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title:GestureDetector(
            onDoubleTapDown: (e) => print("双击时第二次点击触发：$e"),
            child: const Text("双击时第二次点击触发"),
          ),
        ),
      ],
    );
  }

}


class Test4 extends StatelessWidget{
  const Test4({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: GestureDetector(
            onLongPress: ()=>print("长按触发：====="),
            child: const Text("长按触发"),
          ),
        ),
        Container(height: 1,color: Colors.black87,)
      ],
    );
  }

}

