//void main() => runApp(new MyApp());

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
//
//    return new MaterialApp(
//        title: 'welcome to Flutter',
//        home: new Scaffold(
//          appBar: new AppBar(
//            title: new Text('Welcom to Flutter'),
//          ),
//          body: new Center(
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provide/provide.dart';

import 'IndexPage.dart';
import 'counter.dart';

////            child: new Text('Hello World'),
////            child: new Text(wordPair.asPascalCase),
//            child: new RandomWords(),
//          ),
//        ));
//  }
//}
//===================================

void main() {
  var counter = Counter();
  var providers = new Providers(); // 创建一个providers对象
  providers..provide(Provider<Counter>.value(counter)); // 把Store添加到providers中

  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '百姓生活+',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: IndexPage(),
      ),
    );
  }
}
