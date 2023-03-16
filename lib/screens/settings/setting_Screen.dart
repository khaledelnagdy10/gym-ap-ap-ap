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
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/images/Online coaching.png'),
      fit: BoxFit.fill,
    ),
    ),
    ),
       Column(
        children: [
          SizedBox(height: 60.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 25.0),
            child: Row(
              children:
              [
                IconButton(onPressed: ()
                {
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios_new),
                iconSize: 50.0,
                color: Colors.white,
                ),
                SizedBox(width: 40.0,),
                Text('Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50.0,),
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text('My Account',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
            ),
            ),
          ),
          SizedBox(height: 50.0,),
          TextButton(
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder:(context)=> EditScreen()));
            },
            child: Text('Edit Profile',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          TextButton(
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>DeleteScreen()));
            },
            child: Text('Delete Account',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 35.0,
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          TextButton(
            onPressed: ()
            {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ChangePaswwordScreen()));
            },
            child: Text('Change Password',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          TextButton(
            onPressed: (){},
            child: Text('Log Out',
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
