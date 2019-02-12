import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'my first flutter app',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Center(
            child: new Text('My First Flutter APP'),
          )
        ),
        body: new HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context, rowNum) {
      return new Text("row: $rowNum");
    }, itemCount: 20,);
  }
}
