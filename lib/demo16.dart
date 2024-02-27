import 'package:flutter/material.dart';
// demo16 事件
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("demo16"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: const Test6(),
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
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title: GestureDetector(
            onLongPressStart: (e)=>print("长按开始时[长按触发时]触发：$e"),
            child: const Text("长按开始时触发"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title: GestureDetector(
            onLongPressEnd: (e)=>print("长按结束时[长按抬起]触发：$e"),
            child: const Text("长按结束时触发"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title: GestureDetector(
            onLongPressDown: (e)=>print("长按按下时[单点也可]触发：$e"),
            child: const Text("长按按下时触发"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title: GestureDetector(
            onLongPressUp: ()=>print("长按抬起时触发：===="),
            child: const Text("长按抬起时触发"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title: GestureDetector(
            onLongPressMoveUpdate: (e)=>print("长按后移动更新时触发：$e"),
            child: const Text("长按后移动更新时触发"),
          ),
        ),
        Container(height: 1,color: Colors.black87,),
        ListTile(
          title: GestureDetector(
            onLongPressCancel: ()=>print("长按取消时触发：===="),
            child: const Text("长按取消时触发"),
          ),
        ),
      ],
    );
  }
}


class Test5 extends StatelessWidget{
  const Test5({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
          onVerticalDragStart: (e)=>print("开始垂直移动,$e"),
          onVerticalDragUpdate: (e)=>print("持续垂直移动,$e"),
          onVerticalDragEnd: (e)=>print("结束垂直移动,$e"),
          onHorizontalDragStart: (e)=>print("开始水平移动,$e"),
          onHorizontalDragUpdate: (e)=>print("持续水平移动,$e"),
          onHorizontalDragEnd: (e)=>print("结束水平移动,$e"),
          child: Container(
            width: 150,
            height: 50,
            color: Colors.green,
            child: const Center(
              child: Text("按住我移动一下"),
            ),
          )
      ),
    );
  }
}



class Test6 extends StatelessWidget{
  const Test6({super.key});


  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Container(width: 5),
        Expanded(
          flex: 1,
          child: IgnorePointer(
            ignoring: true,
            child: Listener(
              onPointerDown: (e)=>print("点了第一个ignoring: true，$e"),
              child: Container(
                height: 50,
                color: Colors.green,
                child: const Text("ignoring: true"),
              ),
            ),
          )),
        Container(width: 5),
        Expanded(
          flex: 1,
          child: AbsorbPointer(
            absorbing: false,
            child: Listener(
              onPointerDown: (e)=>print("点了第二个,absorbing: false，$e"),
              child: Container(
                height: 50,
                color: Colors.lightBlueAccent,
                child: const Text("absorbing: false"),
              ),
            ),
          )),
        Container(width: 5),
      ],
    );
  }
}

