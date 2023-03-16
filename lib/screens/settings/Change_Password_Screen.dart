import 'package:flutter/material.dart';
import 'package:online_coaching/screens/Profile_Screen.dart';

class ChangePaswwordScreen extends StatefulWidget {

  @override
  State<ChangePaswwordScreen> createState() => _ChangePaswwordScreenState();
}

class _ChangePaswwordScreenState extends State<ChangePaswwordScreen> {
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
          SizedBox(height: 60.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 10.0),
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0),
              child: Row(
                children:
                [
                  IconButton(onPressed: ()
                  {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios_new),
                    iconSize: 50.0,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.0,),
                  Text('Change Paswword',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),

                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0),
            child: Container(
              width: 300.0,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Current Password',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIconColor: Colors.white,
                    border: OutlineInputBorder()),
                obscureText: true,
              ),
            ),
          ),
          SizedBox(height: 25.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0),
            child: Container(
              width: 300.0,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'New Password',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIconColor: Colors.white,
                    border: OutlineInputBorder()),
                obscureText: true,
              ),
            ),
          ),
          SizedBox(height: 25.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0),
            child: Container(
              width: 300.0,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Re_type New Password',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIconColor: Colors.white,
                    border: OutlineInputBorder()),
                obscureText: true,
              ),
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 100.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0)
              ),
              width: 200.0,
              height: 40.0,
              child:
              MaterialButton(
                onPressed: ()
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileScreen()));
                },
                child: Text('Confirm',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
        ),
    ]
      ),
    );
  }
}
