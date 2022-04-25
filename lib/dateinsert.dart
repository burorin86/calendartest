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
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Row(
            children:  [
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                    },
                  icon: const Icon(Icons.clear),
                ),
              ),
              const Text('予定の追加'),
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
                child: const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'タイトルを入れてください',
                    border: InputBorder.none,

                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 2.0),
               child: Container(
                 // color: Colors.white,
                 height: 50,
                 decoration: const BoxDecoration(
                   shape: BoxShape.rectangle,
                   color: Colors.white,
                   // border: Border.all(
                   //   color: Colors.blue,
                   //   width: 1.0,
                   // ),
                 ),
               ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 2.0),
              child: Container(
                // color: Colors.white,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white
                  // border: Border.all(
                  //   color: Colors.blue,
                  //   width: 1.0,
                  // ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Container(
                // color: Colors.white,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  // border: Border.all(
                  //   color: Colors.blue,
                  //   width: 1.0,
                  // ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Container(
                // color: Colors.white,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  // border: Border.all(
                  //   color: Colors.blue,
                  //   width: 1.0,
                  // ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
                child: const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'コメントを入力して下さい',
                    border: InputBorder.none,

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
