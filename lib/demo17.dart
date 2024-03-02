
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
  TextEditingController userInputController = TextEditingController();
  void clearUserInput(){
    userInputController.clear();
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
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.characters,
            autofocus: true,
            obscureText: true,
            autocorrect: true,
            onTap: ()=>print("你点击了输入框"),
            onChanged: (e){
              print("你输入了${e.characters}/共${e.length}字");
            },
            cursorWidth: 10,
            cursorColor: Colors.green,
            cursorRadius: const Radius.circular(5),
            cursorHeight: 50,
            cursorOpacityAnimates: true,
            inputFormatters: [],

          ),
        ),
        ListTile(
          title: TextField(
            controller: controller,
            enabled: false,
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
              suffix: Text("后缀"),
            ),
          ),
        ),
        const ListTile(
          title: TextField(
            decoration: InputDecoration(
              hintText: "灰色提示文字",
              label: Text("label"),
              helperText: "帮助文字",
              errorText: "错误提示",
              contentPadding: EdgeInsets.all(10),
              counterText: "计数器",
              filled: true,
              fillColor: Colors.green
            ),
          ),
        ),
        ListTile(
          title: TextField(
            controller: userInputController,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              hintText: "请输入用户名",
              labelText: "用户名",
              prefixIcon: Icon(Icons.account_box),
              filled: true,
              fillColor: Colors.white70,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlue
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
              )
            ),

          ),
        )
      ],
    );
  }
}
