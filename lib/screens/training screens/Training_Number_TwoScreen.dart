import 'package:flutter/material.dart';
import 'package:online_coaching/screens/training%20screens/Training_Screen.dart';
import 'package:online_coaching/screens/arm%20training/arm_screen.dart';
import 'package:online_coaching/screens/cardio%20training/cardio_screen.dart';
import 'package:online_coaching/screens/leg%20training/leg_screen.dart';

class TrainingNumTwo extends StatelessWidget {
  const TrainingNumTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
      Container(
      decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/12.png'),
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
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Arm_Screen()));
                  },
                    child:Text('Arm Workout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ), ),
                ),
                SizedBox(height: 120.0,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: ()
                    {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>TrainingScreen()));
                    },

                      icon: Icon(Icons.arrow_back_outlined),
                      iconSize: 50.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 45.0,),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 105.0),
                  child: TextButton(onPressed: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Leg_Screen()));
                  },
                    child:Text('Leg Workout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ), ),
                ),
                SizedBox(height: 225.0,),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 110.0),
                  child: TextButton(onPressed: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>CardioScreen()));
                  },
                    child:Text('Cardio Workout',
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
