import 'package:flutter/material.dart';
import 'package:online_coaching/screens/settings/Change_Password_Screen.dart';
import 'package:online_coaching/screens/settings/Delete_Screen.dart';
import 'package:online_coaching/screens/settings/Edit_Screen.dart';

class SettingsScreen extends StatefulWidget {

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
       children: [
       Container(
      decoration: const BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/images/Online coaching.png'),
      fit: BoxFit.fill,
    ),
    ),
    ),
       Column(
        children: [
          const SizedBox(height: 60.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 25.0),
            child: Row(
              children:
              [
                IconButton(onPressed: ()
                {
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back_ios_new),
                iconSize: 50.0,
                color: Colors.white,
                ),
                const SizedBox(width: 40.0,),
                const Text('Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50.0,),
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('My Account',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
            ),
            ),
          ),
          const SizedBox(height: 50.0,),
          TextButton(
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder:(context)=> EditScreen()));
            },
            child: const Text('Edit Profile',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
          ),
          const SizedBox(height: 50.0,),
          TextButton(
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const DeleteScreen()));
            },
            child: const Text('Delete Account',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
          ),
          const SizedBox(height: 50.0,),
          TextButton(
            onPressed: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>const ChangePaswwordScreen()));
            },
            child: const Text('Change Password',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          const SizedBox(height: 50.0,),
          TextButton(
            onPressed: (){},
            child: const Text('Log Out',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
          ),
        ],
      ),
    ]
    ),
    );
  }
}
