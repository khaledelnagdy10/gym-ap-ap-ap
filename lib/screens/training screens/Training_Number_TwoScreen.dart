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
      decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/12.png'),
      fit: BoxFit.fill,
    ),
    ),
    ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 300.0,),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 95.0),
                  child: TextButton(onPressed: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const Arm_Screen()));
                  },
                    child:const Text('Arm Workout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ), ),
                ),
                const SizedBox(height: 120.0,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: ()
                    {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const TrainingScreen()));
                    },

                      icon: const Icon(Icons.arrow_back_outlined),
                      iconSize: 50.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(height: 45.0,),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 105.0),
                  child: TextButton(onPressed: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const Leg_Screen()));
                  },
                    child:const Text('Leg Workout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ), ),
                ),
                const SizedBox(height: 225.0,),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 110.0),
                  child: TextButton(onPressed: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>const CardioScreen()));
                  },
                    child:const Text('Cardio Workout',
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
