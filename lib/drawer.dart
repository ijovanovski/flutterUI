import 'package:flutter/material.dart';



class  MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
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
      ]));
  }
}







