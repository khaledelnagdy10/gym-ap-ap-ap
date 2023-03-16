import 'package:flutter/material.dart';
import 'package:online_coaching/screens/training%20screens/Training_Number_TwoScreen.dart';
import 'package:online_coaching/screens/back%20training/back_Screen.dart';
import 'package:online_coaching/screens/shoulder%20training/shoulder_screen.dart';
import 'package:online_coaching/screens/sidebar_screen.dart';
import 'package:online_coaching/screens/welcome_screen.dart';

import '../chest training/Chest_Screen.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({Key? key}) : super(key: key);

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
      Container(
      decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/11.png'),
      fit: BoxFit.fill,
    ),
    ),
    ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 300.0,),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 95.0),
              child: TextButton(onPressed: ()
              {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ChestScreen()));
              },
                  child:Text('Chest Workout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ), ),
            ),
            SizedBox(height: 120.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(onPressed: ()
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>SideBarScreen()));
                }, icon: Icon(Icons.arrow_back),
                  iconSize: 50.0,
                  color: Colors.white,
                ),
                SizedBox(width: 295.0,),
                IconButton(onPressed: ()
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>TrainingNumTwo()));
                }, icon: Icon(Icons.arrow_forward),
                  iconSize: 50.0,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 45.0,),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 95.0),
              child: TextButton(onPressed: ()
              {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>BackScreen()));
              },
                  child:Text('Back Workout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ), ),
            ),
            SizedBox(height: 235.0,),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 95.0),
              child: TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ShoulderScreen()));
              },
                  child:Text('Shoulder Workout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ), ),
            ),
          ],
        ),
    ]
      ),
    );
  }
}
