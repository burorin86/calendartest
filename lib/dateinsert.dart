import 'package:flutter/material.dart';

void main() {
  runApp(const dateinsert());
}

class dateinsert extends StatelessWidget {
  const dateinsert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children:  [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                    },
                  icon: Icon(Icons.add),
                ),
              ),
              Text('予定の追加'),
            ],
          ),
          actions: [
            Container(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // これで両端に寄せる
              children: <Widget>[

                ElevatedButton(
                  onPressed: (){},
                  child: const Text(
                    '保存',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey, //ボタンの背景色
                  ),
                ),
              ]
        ),
            ),
          ],
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
