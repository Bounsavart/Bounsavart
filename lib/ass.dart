import 'package:flutter/material.dart';

class Ass extends StatelessWidget {
  const Ass({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blueGrey,
            ),
            accountName: Text("ARTTO"),
            accountEmail: Text("PERFECT"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Monk.jpeg"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('ARTTO'),
            onTap: () {
              Navigator.pushNamed(context, '/change_color');
            },
          ),
        ],
      ),
    );
  }
}
