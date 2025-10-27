import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("assets/images/monk.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text(
              "Bounsavart sinnavong",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "Email : manchesterunited",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/IMG_0962.PNG"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 30, color: Colors.orange),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/art');
            },
          ),
          ListTile(
            leading: Icon(Icons.home, size: 30, color: Colors.amber),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_cart,
              size: 30,
              color: Colors.deepPurpleAccent,
            ),
            title: Text('Product'),
            onTap: () {
              Navigator.pushNamed(context, '/product');
            },
          ),
          ListTile(
            leading: Icon(Icons.person, size: 30, color: Colors.cyan),
            title: Text('Information'),
            onTap: () {
              Navigator.pushNamed(context, '/Developer');
            },
          ),
        ],
      ),
    );
  }
}
