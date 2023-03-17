import 'package:flutter/material.dart';
import 'package:online_coaching/view/Profile_Screen.dart';

class EditScreen extends StatefulWidget {

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
      children: [
      Container(
      decoration: const BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/images/Online coaching.png'),
      fit: BoxFit.fill,),
    ),
    ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 5.0),
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
                const SizedBox(width: 25.0,),
                const Text('Edit Your Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: SizedBox(
              width: 300.0,
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    prefixIconColor: Colors.white,
                    labelText: 'User Name',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.name,),
            ),
          ),
          const SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: SizedBox(
              width: 300.0,
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    prefixIconColor: Colors.white,
                    labelText: 'Email Address',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.emailAddress,),
            ),
          ),
          const SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: SizedBox(
              width: 300.0,
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Weight',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,),
            ),
          ),
          const SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: SizedBox(
              width: 300.0,
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Height',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,),
            ),
          ),
          const SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: SizedBox(
              width: 300.0,
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Sex',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.text,),
            ),
          ),
          const SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: SizedBox(
              width: 300.0,
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.calendar_month),
                    prefixIconColor: Colors.white,
                    labelText: 'Date Of Birth',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.datetime,),
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
                onPressed: () {
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
