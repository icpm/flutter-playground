import 'package:flutter/material.dart';
import 'paint_example.dart';
import 'list_example.dart';
import 'age_calculator.dart';

var GatechThemeColor = MaterialColor(0xFFB3A369, <int, Color>{
  50: const Color(0xFFB3A369),
  100: const Color(0xFFB3A369),
  200: const Color(0xFFB3A369),
  300: const Color(0xFFB3A369),
  400: const Color(0xFFB3A369),
  500: const Color(0xFFB3A369),
  600: const Color(0xFFB3A369),
  700: const Color(0xFFB3A369),
  800: const Color(0xFFB3A369),
  900: const Color(0xFFB3A369),
});

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: GatechThemeColor),
      home: new HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Center(
          child: new Text('Flutter Playground'),
        )),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.all(40.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new MaterialButton(
                      height: 50.0,
                      minWidth: 150.0,
                      color: GatechThemeColor[100],
                      textColor: Colors.white,
                      child: new Text('Age Calcuclator'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AgeCalculator()),
                        );
                      },
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                    new MaterialButton(
                      height: 50.0,
                      minWidth: 150.0,
                      color: GatechThemeColor[100],
                      textColor: Colors.white,
                      child: new Text('Painiting'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaintApp()),
                        );
                      },
                    ),
                    new Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                    new MaterialButton(
                      height: 50.0,
                      minWidth: 150.0,
                      color: GatechThemeColor[100],
                      textColor: Colors.white,
                      child: new Text('List example'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListExample()),
                        );
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
