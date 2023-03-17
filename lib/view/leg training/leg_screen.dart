import 'package:flutter/material.dart';

import 'legnumtwo_screen.dart';

class Leg_Screen extends StatelessWidget {
  const Leg_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/18.png'),
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
                onPressed: (){},
                child: const Text('Leg Press',
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
                onPressed: (){},
                child: const Text('Leg Extention',
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
            const SizedBox(height: 70.0,),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: TextButton(
                onPressed: (){},
                child: const Text('Horizontal Leg Curl',
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
            const SizedBox(height: 90.0,),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 125.0),
              child: TextButton(
                onPressed: (){},
                child: const Text('Culf Raises',
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
            const SizedBox(height: 50.0,),
            Center(
              child: IconButton(onPressed: ()
              {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>const LegNumTwoScreen()));
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
