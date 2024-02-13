import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title:const Text("demo11"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: const RowAndColumn(),
    ),
  ));
}


class FlexHor extends StatelessWidget{
  const FlexHor({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(flex: 1,child: Container(color: Colors.brown,child: Icon(Icons.egg,color: Colors.teal,size: 50,),)),
        Expanded(flex: 2,child: Container(color: Colors.orange,child: Icon(Icons.facebook_outlined,color: Colors.teal,size: 50,),)),
        Expanded(flex: 3,child: Container(color: Colors.cyan,child: Icon(Icons.data_object,color: Colors.teal,size: 50,),)),
      ],
    );
  }
}

class FlexVer extends StatelessWidget{
  const FlexVer({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Expanded(flex: 1,child: Container(color: Colors.brown,child: Icon(Icons.egg,color: Colors.teal,size: 50,),)),
        Expanded(flex: 2,child: Container(color: Colors.orange,child: Icon(Icons.facebook_outlined,color: Colors.teal,size: 50,),)),
        Expanded(flex: 3,child: Container(color: Colors.cyan,child: Icon(Icons.data_object,color: Colors.teal,size: 50,),)),
      ],
    );
  }

}


class RowAndColumn extends StatelessWidget{
  const RowAndColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin:const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(color: Colors.teal,),
          ),
          Container(height: 10,),//只是组件之间的分割线
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 2,child: Container(color: Colors.deepPurple,),),
                Container(width: 10,),//只是组件之间的分割线
                Expanded(flex: 1,child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(flex: 1,child: Container(color: Colors.tealAccent,)),
                    Container(height: 10,),//只是组件之间的分割线
                    Expanded(flex: 1,child: Container(color: Colors.lightBlue,))
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}