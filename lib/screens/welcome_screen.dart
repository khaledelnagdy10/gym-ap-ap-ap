import 'package:flutter/material.dart';
import 'package:online_coaching/screens/coaches/Coaches_Screen.dart';
import 'package:online_coaching/screens/Maps_screen.dart';
import 'package:online_coaching/screens/Profile_Screen.dart';
import 'package:online_coaching/screens/training%20screens/Training_Screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Online coaching.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150.0,),
            Center(
              child: Text('Choose What Do You Want',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            SizedBox(height: 60.0,),
            Container(
              height: 40.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: MaterialButton(onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TrainingScreen()));
              },
              child: Center(
                child: Text('Workout',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
                ),
              ),
              ),
            ),
            SizedBox(height: 60.0,),
            Container(
              height: 40.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: MaterialButton(onPressed: ()
              {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Coaches()));
              },
                child: Center(
                  child: Text('Coaches',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60.0,),
            Container(
              height: 40.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: MaterialButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Maps()));
              },
                child: Center(
                  child: Text('Maps',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60.0,),
            Container(
              height: 40.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: MaterialButton(onPressed: ()
              {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileScreen()));
              },
                child: Center(
                  child: Text('profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}