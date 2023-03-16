import 'package:flutter/material.dart';
import 'package:online_coaching/screens/Home_Screen.dart';
import 'package:online_coaching/screens/Profile_Screen.dart';


class LogOutScreen extends StatefulWidget {

  @override
  State<LogOutScreen> createState() => _LogOutScreenState();
}

class _LogOutScreenState extends State<LogOutScreen> {
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
            SizedBox(height: 80.0,),
            Center(
              child: Text('Log Out',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            Center(
              child: Text('Are you sure you want to log out',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
            Row(
              children: [
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                }, child: Text('Yes',
                style: TextStyle(
                  color: Colors.white,
                ),
                )),
                SizedBox(width: 20.0,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                 }, child: Text('No',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
              ],
            ),
          ],
        ),
    ]
      ),
    );
  }
}
