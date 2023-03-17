import 'package:flutter/material.dart';
import 'package:online_coaching/view/back%20training/backnumtwo_screen.dart';
import 'package:online_coaching/view/gifs.dart';


class BackScreen extends StatelessWidget {
  const BackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/14.png'),
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
            const SizedBox(height: 150.0,),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: TextButton(
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const Gif()));
                },
                child: const Text('Lat Pull Down',
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
            const SizedBox(height: 60.0,),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 120.0),
              child: TextButton(
                onPressed: (){},
                child: const Text('T-Bar',
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
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: TextButton(
                onPressed: (){},
                child: const Text('Seated Row',
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
              child: Text('3 Sets x 15 Times',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
            ),
            const SizedBox(height: 110.0,),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: TextButton(
                onPressed: (){},
                child: const Text('db Row',
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
              child: Text('4 Sets x 12 Times',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
            ),
            const SizedBox(height: 50.0,),
            Center(
              child: IconButton(onPressed: ()
              {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const BackNumTwoScreen()));
              }, icon: const Icon(Icons.arrow_forward),
                color: Colors.white,
                iconSize: 30.0,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
