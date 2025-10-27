import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/ass.dart';

class Art extends StatelessWidget {
  const Art({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Setting(),
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
      ),
      backgroundColor: CupertinoColors.inactiveGray,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Account",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 15),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                selected: true,
                selectedTileColor: Colors.white,
                leading: Icon(Icons.dark_mode_outlined),
                title: Text(
                  'Dark Mode',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Divider(height: 2, color: Colors.transparent),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                selected: true,
                selectedTileColor: Colors.white,
                leading: Icon(Icons.person_2_outlined),
                title: Text(
                  'change information',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 19,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Settings",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 16),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                selected: true,
                selectedTileColor: Colors.white,
                leading: Icon(Icons.lock),
                title: Text(
                  'change Password',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 19,
                ),
              ),
              Divider(height: 2, color: Colors.transparent),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                selected: true,
                selectedTileColor: Colors.white,
                leading: Icon(Icons.email),
                title: Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 19,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Support",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 8),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                selected: true,
                selectedTileColor: Colors.white,
                leading: Icon(Icons.volume_down_alt),
                title: Text(
                  'Sound setting',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 19,
                ),
              ),
              Divider(height: 2, color: Colors.transparent),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                selected: true,
                selectedTileColor: Colors.white,
                leading: Icon(Icons.language),
                title: Text(
                  'Change language',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 19,
                ),
              ),
              SizedBox(height: 3),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                selected: true,
                selectedTileColor: Colors.white,
                leading: Icon(Icons.notifications_none),
                title: Text(
                  'Notifications',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 19,
                ),
              ),
              SizedBox(height: 3),
              ListTile(
                onTap: () {
                  _exitAlertDialog(context);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                selected: true,
                selectedTileColor: Colors.white,
                leading: IconButton(
                  onPressed: () => _exitAlertDialog(context),
                  icon: const Icon(Icons.logout),
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 19,
                ),
              ),
              SizedBox(height: 3),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                selected: true,
                selectedTileColor: Colors.white,
                leading: Icon(Icons.delete),
                title: Text(
                  'Delete',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 19,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _exitAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AboutDialog();
      },
    );
  }
}
