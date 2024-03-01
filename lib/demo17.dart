
import 'package:flutter/material.dart';
// demo17 输入框
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("demo17"),
        backgroundColor: Colors.amberAccent,
      ),
      body: AllInput(),
    ),
  ));
}


class AllInput extends StatelessWidget{
  AllInput({super.key});

  TextEditingController controller = TextEditingController();

  void clearInput(){
    controller.clear();
  }



  @override
  Widget build(BuildContext context) {
    controller = TextEditingController.fromValue(
      TextEditingValue(
        text: "初始化文本",
        selection: TextSelection.fromPosition(
          const TextPosition(
            affinity: TextAffinity.downstream,
            offset: 5
          )
        )
      )
    );
    return ListView(
      children: [
        const ListTile(
          title: TextField(),
        ),
        ListTile(
          title: TextField(
            controller: controller,
          ),
        ),
        const ListTile(
          title: TextField(
            decoration: InputDecoration(
              hintText: "灰色提示文字",
              icon: Icon(Icons.account_box)
            ),
          ),
        ),
        const ListTile(
          title: TextField(
            decoration: InputDecoration(
              hintText: "灰色提示文字",
              prefixIcon: Icon(Icons.facebook_outlined),
              suffixIcon: Icon(Icons.clear),
            ),
          ),
        ),
        const ListTile(
          title: TextField(
            decoration: InputDecoration(
              hintText: "灰色提示文字",
              prefix: Text("user"),
              suffix: Text("后缀")
            ),
          ),
        ),
        const ListTile(
          title: TextField(
            decoration: InputDecoration(
                hintText: "灰色提示文字",

            ),
          ),
        )
      ],
    );
  }
}