import 'package:flutter/material.dart';
import 'package:flutter_sample_app/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'タイトルです！',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; //インスタンス

  //プライベートメソッド _hogehoge()
  //インクリメントさせる
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //共通のナビバー的なもの
      appBar: AppBar(
        title: Text(widget.title),
        actions: const <Widget>[
          Icon(Icons.add),
          Icon(Icons.safety_check),
          Icon(Icons.abc)
        ], //ボタンを追加 actionsで追加。
      ),
      //CenterもWidget
      body: Center(
        //Wedgetでスタイリング
        // height: 200,
        // color: Colors.green,
        //参考：https://api.flutter.dev/flutter/material/ElevatedButton-class.html
        child: ElevatedButton(
          child: const Text('次へボタン'),
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextPage('デモ太郎')),
            );
              print(result); //コンソールに表示
          },
        ),
        // child: Padding(
        //   //Row=>横に並べたい時
        //   padding: const EdgeInsets.all(8),
        //   child: Row(
        //     children: const <Widget>[Text('とてもわかる'), Text('とてもわかる２')],
        //   ),
        //   //Column=>縦に複数並べるためのWidget
        //   // child: Column(
        //   //   mainAxisAlignment: MainAxisAlignment.center,
        //   //   children: <Widget>[
        //   //     const Text(
        //   //       'テストだよー',
        //   //     ),
        //   //     const Text(
        //   //       'テスト２',
        //   //     ),
        //   //     Text(
        //   //       '$_counter',
        //   //       style: Theme.of(context).textTheme.headline4,
        //   //     ),
        //   //   ],
        //   // ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
