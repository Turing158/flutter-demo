import 'package:flutter/material.dart';
// demo22 Dialog
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("demo22"),
        backgroundColor: Colors.lightBlue,
      ),
      body: const HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  void alertDialog(context)async{
    var result = await showDialog(
        barrierDismissible: true,
        useSafeArea: true,
        context: context,
        builder: (context)=>AlertDialog(
          title: const Text("标题"),
          content: const Text("内容"),
          actions: [
            TextButton(
                onPressed: (){
                  print("确定");
                  Navigator.pop(context,"confirm");
                },
                child: const Text("确定")
            ),
            TextButton(
                onPressed: (){
                  print("取消");
                  Navigator.pop(context,"cancel");
                },
                child: const Text("取消")
            ),
          ],
        )
    );
    print("返回值：$result");
  }
  void selectDialog(context)async{
    var result = await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context)=>SimpleDialog(
          title: const Text("标题"),
          children: [
            SimpleDialogOption(
              onPressed: (){
                print("选项1");
                Navigator.pop(context,"选项1");
              },
              child: const Text("选项1"),
            ),
            const Divider(),
            SimpleDialogOption(
              onPressed: (){
                print("选项2");
                Navigator.pop(context,"选项2");
              },
              child: const Text("选项2"),
            ),
            const Divider(),
            SimpleDialogOption(
              onPressed: (){
                print("选项3");
                Navigator.pop(context,"选项3");
              },
              child: const Text("选项3"),
            ),
          ],
        )
    );
    print("返回值：$result");
  }

  void custom(context)async{
    var result = await showDialog(
        context: context,
        builder: (context)=>CustomDialog(
            title: "我是标题",
            onFinish: (){},
          content: "我就是个内容",
        )
    );
    print("返回值：$result");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ElevatedButton(
            onPressed: (){
              alertDialog(context);
            },
            child: const Text("alert")
        ),
        const Divider(),
        ElevatedButton(
            onPressed: (){
              selectDialog(context);
            },
            child: const Text("select")
        ),
        const Divider(),
        ElevatedButton(
            onPressed: (){
              custom(context);
            },
            child: const Text("custom")
        ),
      ],
    );
  }
}





class CustomDialog extends Dialog{
  String title;
  TextStyle titleTextStyle;
  String content;
  TextStyle contentTextStyle;
  Color barrierColor;
  Color backgroundColor;
  double height;
  double width;
  Function()? onFinish;
  CustomDialog({
    super.key,
    required this.title,
    required this.onFinish,
    this.content = "",
    this.barrierColor = Colors.black12,
    this.backgroundColor = Colors.brown,
    this.width = 300,
    this.height = 300,
    this.titleTextStyle = const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    this.contentTextStyle = const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          Container(height: double.infinity,width: double.infinity,color: barrierColor,),
          Center(
            child: Container(
              width: width,
              height: height,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                        title,
                        style: titleTextStyle
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      content,
                      style: contentTextStyle,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      child: Column(
                        children: [
                          Container(height: 2,color: Colors.white,),
                          Container(
                            height: 48,
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Expanded(
                                  flex: 1,
                                    child: TextButton(
                                        onPressed: (){
                                          Navigator.pop(context,"confirm");
                                          onFinish;
                                        },
                                        child: const Text(
                                          "确定",
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        )
                                    )
                                ),
                                Container(width: 2,color: Colors.white,),
                                Expanded(
                                  flex: 1,
                                    child: TextButton(
                                        onPressed: (){
                                          Navigator.pop(context,"cancel");
                                        },
                                        child: const Text(
                                          "取消",
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        )
                                    )
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


