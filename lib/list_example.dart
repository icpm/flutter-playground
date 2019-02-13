import 'package:flutter/material.dart';

class ListExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my first flutter app',
      home: new Scaffold(
        appBar: new AppBar(
            title: new Center(
          child: new Text('My First Flutter APP'),
        )),
        body: new HomeWidget(),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.assignment_return),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: (context, rowNum) {
        return new Text("row: $rowNum");
      },
      itemCount: 20,
    );
  }
}
