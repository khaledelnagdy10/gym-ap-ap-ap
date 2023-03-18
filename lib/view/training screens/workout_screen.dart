import 'package:flutter/material.dart';
import 'package:online_coaching/view/training%20screens/Training_Number_TwoScreen.dart';
import 'package:online_coaching/view/back%20training/back_Screen.dart';
import 'package:online_coaching/view/shoulder%20training/shoulder_screen.dart';
import 'package:online_coaching/view/sidebar_screen.dart';
import 'package:online_coaching/view/home_screen.dart';

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
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/11.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChestScreen()));
              },
              child: const Text(
                'Chest Workout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SideBarScreen()));
                  },
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 50.0,
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TrainingNumTwo()));
                  },
                  icon: const Icon(Icons.arrow_forward),
                  iconSize: 50.0,
                  color: Colors.white,
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BackScreen()));
              },
              child: const Text(
                'Back Workout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShoulderScreen()));
              },
              child: const Text(
                'Shoulder Workout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
