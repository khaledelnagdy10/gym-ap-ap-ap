import 'package:flutter/material.dart';
import 'package:online_coaching/view/map_screen.dart';
import 'package:online_coaching/view/profile_screen.dart';
import 'package:online_coaching/view/settings/setting_Screen.dart';
import 'coaches/home_widget.dart';
import 'training screens/workout_screen.dart';

class SideBarScreen extends StatelessWidget {
  const SideBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: SizedBox(
        width: 220.0,
        height: 1000.0,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/14.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: const DrawerHeader(
                  child: Text(
                    'Menu',
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
                leading: const Icon(Icons.account_circle),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
              ),
              ListTile(
                title: const Text('Workout'),
                leading: const Icon(Icons.directions_run),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TrainingScreen()));
                },
              ),
              ListTile(
                title: const Text('Coaches'),
                leading: const Icon(Icons.person),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeWidget()));
                },
              ),
              ListTile(
                title: const Text('Maps'),
                leading: const Icon(Icons.map),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MapScreen()));
                },
              ),
              ListTile(
                title: const Text('Setting'),
                leading: const Icon(Icons.settings),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingsScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
