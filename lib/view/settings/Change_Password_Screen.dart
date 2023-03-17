import 'package:flutter/material.dart';
import 'package:online_coaching/view/Profile_Screen.dart';

class ChangePaswwordScreen extends StatefulWidget {
  const ChangePaswwordScreen({super.key});


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
      decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/Online coaching.png'),
      fit: BoxFit.fill,
    ),
    ),
    ),
        Column(
        children: [
          const SizedBox(height: 60.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 10.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0),
              child: Row(
                children:
                [
                  IconButton(onPressed: ()
                  {
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios_new),
                    iconSize: 50.0,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10.0,),
                  const Text('Change Paswword',
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
          const SizedBox(height: 50.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0),
            child: SizedBox(
              width: 300.0,
              child: TextFormField(
                decoration: const InputDecoration(
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
          const SizedBox(height: 25.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0),
            child: SizedBox(
              width: 300.0,
              child: TextFormField(
                decoration: const InputDecoration(
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
          const SizedBox(height: 25.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0),
            child: SizedBox(
              width: 300.0,
              child: TextFormField(
                decoration: const InputDecoration(
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
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 100.0),
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
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const ProfileScreen()));
                },
                child: const Text('Confirm',
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
