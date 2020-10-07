import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.blue),
  ));
}

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
        child: Card(
            child: Column(
          children: <Widget>[
            Image.asset("assets/photo.jpg"),
            SizedBox(height: 20),
            Text(myText,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _nameCotroller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter some text",
                    labelText: "name"),
              ),
            )
          ],
        )),
      )),
      drawer: Drawer(
          child: ListView(padding: const EdgeInsets.all(0), children: [
        UserAccountsDrawerHeader(
            accountName: Text('Ivica Jovanovski'),
            accountEmail: Text('ijovanovski@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1543682704-15adeb008ac4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=641&q=80"),
            )),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Ivica Jovanovski'),
          subtitle: Text('Developer'),
          trailing: Icon(Icons.edit),
          onTap: () {},
        ),
        ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('ijovanovski@gmail.com'),
            trailing: Icon(Icons.edit))
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameCotroller.text;
          setState(() {
            
          });
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
