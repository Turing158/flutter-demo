import 'package:flutter/material.dart';
// demo8 列表布局
void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title:const Text("demo8",),
        backgroundColor: Colors.lightGreen,
      ),
      body: const List5(),
    )
  ));
}

// 垂直列表-title
class List1 extends StatelessWidget{
  const List1({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          title: Text("标题1"),
        ),
        ListTile(
          title: Text("标题1"),
        ),
        ListTile(
          title: Text("标题1"),
        ),
        ListTile(
          title: Text("标题1"),
        ),
        ListTile(
          title: Text("标题1"),
        ),
      ],
    );
  }
}

// 垂直列表-leading
class List2 extends StatelessWidget{
  const List2({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.add,color: Colors.amber,),
          title: Text("标题2"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.back_hand,color: Colors.blueAccent,),
          title: Text("标题2"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.calendar_today_sharp,color: Colors.cyan,),
          title: Text("标题2"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.data_object,color: Colors.deepOrange,),
          title: Text("标题2"),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.edgesensor_high,color: Colors.green,),
          title: Text("标题2"),
        ),
      ],
    );
  }
}

// 垂直列表-subtitle
class List3  extends StatelessWidget{
  const List3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const ListTile(
          leading: Icon(Icons.nearby_error_sharp,color: Colors.lightGreen,),
          title: Text("标题3"),
          subtitle: Text("副标题3"),
        ),
        const Divider(),
        ListTile(
          leading: Image.asset("img/head.jpg"),
          title: const Text("标题3"),
          subtitle: const Text("副标题3"),
        ),
        const Divider(),
        const ListTile(
          leading: Icon(Icons.nearby_error_sharp,color: Colors.lightGreen,),
          title: Text("标题3"),
          subtitle: Text("副标题3"),
        ),
        const Divider(),
        const ListTile(
          leading: Icon(Icons.nearby_error_sharp,color: Colors.lightGreen,),
          title: Text("标题3"),
          subtitle: Text("副标题3"),
        ),
      ],
    );
  }
}

// 水平列表
class List4 extends StatelessWidget{
  const List4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 200,
            color: Colors.blueGrey,
            child: Image.asset("img/head.jpg"),
          ),
          Container(
            width: 200,
            color: Colors.lightGreen,
            child: const Text("text"),
          ),
          Container(
            width: 200,
            color: Colors.black12,
            child: const Icon(Icons.info_outline,size: 40,color: Colors.cyanAccent,),
          ),
          Container(
            width: 200,
            color: Colors.limeAccent,
            child: const Text("我只是个文本！"),
          )
        ],
      ),
    );
  }
}



// 动态列表
class List5 extends StatelessWidget{
  const List5({super.key});

  List<Widget> listWidget(){
    List<Widget> list = [];
    for(int i = 0;i<50;i++){
      list.add(ListTile(
        title: Text("标题${i+1}"),
        tileColor: Color.fromRGBO(255-i*2, 255-i*3, 255-i*4,1.0),
        titleTextStyle: TextStyle(
            color: Color.fromRGBO(50+i*2, 50+i*3, 50+i*4,1.0)
        ),
        subtitle: Text(
            "数据${i+1}",
        ),
        subtitleTextStyle: TextStyle(
          color: Color.fromRGBO(100+i*4, 100+i*3, 100+i*2,1.0),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listWidget(),
    );
  }
  
}