import 'package:flutter/material.dart';
import 'package:online_coaching/screens/Profile_Screen.dart';

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
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage('assets/images/Online coaching.png'),
      fit: BoxFit.fill,),
    ),
    ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 5.0),
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
                SizedBox(width: 25.0,),
                Text('Edit Your Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: Container(
              width: 300.0,
              child: TextFormField(
                decoration: InputDecoration(
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
          SizedBox(height: 30.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: Container(
              width: 300.0,
              child: TextFormField(
                decoration: InputDecoration(
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
          SizedBox(height: 30.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: Container(
              width: 300.0,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Weight',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,),
            ),
          ),
          SizedBox(height: 30.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: Container(
              width: 300.0,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Height',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,),
            ),
          ),
          SizedBox(height: 30.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: Container(
              width: 300.0,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Sex',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.text,),
            ),
          ),
          SizedBox(height: 30.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
            child: Container(
              width: 300.0,
              child: TextFormField(
                decoration: InputDecoration(
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
                onPressed: () {
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
