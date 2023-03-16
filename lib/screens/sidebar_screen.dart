import 'package:flutter/material.dart';
import 'package:online_coaching/screens/Maps_screen.dart';
import 'package:online_coaching/screens/Profile_Screen.dart';
import 'package:online_coaching/screens/settings/setting_Screen.dart';
import 'coaches/Coaches_Screen.dart';
import 'training screens/Training_Screen.dart';


class SideBarScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Container(
        width: 220.0,
        height: 1000.0,
        child: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/14.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: const DrawerHeader(
                  child: Text('Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Profile'),
                leading: Icon(Icons.account_circle),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileScreen()));
                },
              ),
              ListTile(
                title: const Text('Workout'),
                leading: Icon(Icons.directions_run),

                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> TrainingScreen()));
                },
              ),
              ListTile(
                title: const Text('Coaches'),
                leading: Icon(Icons.person),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Coaches()));
                },
              ),
              ListTile(
                title: const Text('Maps'),
                leading: Icon(Icons.map),

                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Maps()));
                },
              ),
              ListTile(
                title: const Text('Setting'),
                leading: Icon(Icons.settings),

                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>SettingsScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}