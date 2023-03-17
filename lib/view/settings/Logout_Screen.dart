// ignore: file_names
import 'package:flutter/material.dart';
import 'package:online_coaching/view/Home_Screen.dart';
import 'package:online_coaching/view/Profile_Screen.dart';


class LogOutScreen extends StatefulWidget {
  const LogOutScreen({super.key});


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
      decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/Online coaching.png'),
      fit: BoxFit.fill,
    ),
    ),
    ),
        Column(
          children: [
            const SizedBox(height: 80.0,),
            const Center(
              child: Text('Log Out',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ),
            const SizedBox(height: 30.0,),
            const Center(
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
                }, child: const Text('Yes',
                style: TextStyle(
                  color: Colors.white,
                ),
                )),
                const SizedBox(width: 20.0,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen()));
                 }, child: const Text('No',
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
