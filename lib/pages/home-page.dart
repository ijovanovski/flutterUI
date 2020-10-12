import 'package:flutter/material.dart';

import '../drawer.dart';
import '../name_card_widget.dart';







class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "change my name try";
  TextEditingController _nameCotroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text("Awesome App")),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: NameCardWidget(myText: myText, nameCotroller: _nameCotroller),
      )
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameCotroller.text;
          setState(() {});
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
