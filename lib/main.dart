import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter custom clipper example"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          const SizedBox(height: 10.0),
          ClipPath(
            clipper: OvalLeftBorderClipper(),
            child: Container(
              height: 100,
              color: Colors.green,
              child: Center(child: Text("OvalLeftBorderClipper()")),
            ),
          ),
        ],
      ),
    );
  }
}
