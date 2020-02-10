import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(
          //返回键
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.grey),
            onPressed:  () {
              Navigator.of(context).pop();
            }
          ),
        ),
        body: Center(child: Text('输入感兴趣的内容')),
      ),
    );
  }
}