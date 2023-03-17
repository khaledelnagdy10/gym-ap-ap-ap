import 'package:flutter/material.dart';
import 'package:online_coaching/view/chest%20training/chestbarflat.dart';

import '../videos.dart';

class ChestScreen extends StatelessWidget {
  const ChestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/13.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50.0,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: ()
                {
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back_outlined),
                  color: Colors.white,
                  iconSize: 30.0,
                ),
              ],
            ),
            const SizedBox(height: 120.0,),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: TextButton(
                onPressed: ()
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const ChestBarFlat()));
                },
                child: const Text('Chest Bar Flat',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
                ),
              ),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: Text('3 Sets x 12 Times',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
            ),
            const SizedBox(height: 80.0,),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 120.0),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const VideoPlayerApp()));
                },
                child: const Text('Incline Chest Press',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19.0,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 120.0),
              child: Text(' Machine',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19.0,
                ),
              ),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: Text('3 Sets x 12 Times',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
            ),
            const SizedBox(height: 60.0,),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const VideoPlayerApp()));

                },
                child: const Text('Chest Fly',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: Text('Machine',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: Text('3 Sets x 12 Times',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
            ),
            const SizedBox(height: 60.0,),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const VideoPlayerApp()));
                },
                child: const Text('Incline db',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: Text('Chest Press',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: Text('3 Sets x 12 Times',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
