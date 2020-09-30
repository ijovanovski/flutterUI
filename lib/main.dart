import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Awesome App")),
      body: Container(
        color: Colors.teal,
        width: 500,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.red,
                alignment: Alignment.topRight,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.green,
                alignment: Alignment.topRight,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: 100,
                height: 100,
                color: Colors.yellow,
                alignment: Alignment.topRight,
              )
            ]),
      ),
    );
  }
}
