import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Text(
              'Mood Tracker',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, "/home"); // Navigate to Home
            },
          ),
          ListTile(
            leading: Icon(Icons.note),
            title: Text('Notes'),
            onTap: () {
              Navigator.pushNamed(context, "/notepage"); // Navigate to Notes page
            },
          ),
          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text('Stats'),
            onTap: () {
              Navigator.pushNamed(context, "/moodhistory"); // Navigate to Tree page
            },
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {
              Navigator.pushNamed(context,'/'); // Close the drawer and handle logout
            },
          ),
        ],
      ),
    );
  }
}