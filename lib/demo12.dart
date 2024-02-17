import 'package:flutter/material.dart';
//demo12 Wrap布局
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("demo12"),
        backgroundColor: Colors.lightBlue,
      ),
      body: const WrapTest(),
    ),
  ));
}


class WrapTest extends StatelessWidget{
  const WrapTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Container(
        width: 300,
        alignment: Alignment.topCenter,
        child: Wrap(
          spacing: 5,
          runSpacing: 5,
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            TextButton(onPressed: (){}, child: const Text("Btn1")),
            TextButton(onPressed: (){}, child: const Text("Btn22")),
            TextButton(onPressed: (){}, child: const Text("Btn333")),
            TextButton(onPressed: (){}, child: const Text("Btn4444")),
            TextButton(onPressed: (){}, child: const Text("Btn55555")),
            TextButton(onPressed: (){}, child: const Text("Btn666666")),
            TextButton(onPressed: (){}, child: const Text("Btn7777777")),
            TextButton(onPressed: (){}, child: const Text("Btn88888888")),
            TextButton(onPressed: (){}, child: const Text("Btn999999999")),
            TextButton(onPressed: (){}, child: const Text("Btn1000000000")),
            TextButton(onPressed: (){}, child: const Text("Btn11")),
          ],
        ),
      ),
    );
  }
}