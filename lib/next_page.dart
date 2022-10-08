import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  //コンストラクタ
  const NextPage(this.name, {super.key});
  //定数
  final String name;

  @override
  Widget build(BuildContext context) {
    // ここに記述して画面を完成させる
    return Scaffold(
        //共通のナビバー的なもの
        appBar: AppBar(
          title: const Text('next_bottunだよ'),
          actions: const <Widget>[
            Icon(Icons.add),
            Icon(Icons.safety_check),
            Icon(Icons.abc)
          ], //ボタンを追加 actionsで追加。
        ),
        body: Container(
          height: double.infinity,
          color: Colors.red,
          child: Column(
            children: <Widget>[
              Text(name),
              Center(
                child: ElevatedButton(
                  child: const Text('戻るポップアップボタン'),
                  onPressed: () {
                    Navigator.pop(
                      context,
                      '$nameが戻った'
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
