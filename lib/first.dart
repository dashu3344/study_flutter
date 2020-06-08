import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provide/provide.dart';

import 'counter.dart';

class FitstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[Number(), MyButton()],
      )),
    );
  }
}

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 200.0),
        child: Provide<Counter>(
          builder: (context, child, counter) {
            return Text(
              '${counter.Value.toString()}',
              style: TextStyle(fontSize: 30.0),
            );
          },
        ));
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: RaisedButton(
          onPressed: () {
//            Provide.value<Counter>(context).increment();
            Provide.value<Counter>(context).increment();
          },
          child: Text('增加'),
        ),
      ),
    );
  }
}
