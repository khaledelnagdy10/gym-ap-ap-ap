import 'package:flutter/material.dart';
import 'package:online_coaching/screens/Home_Screen.dart';


class DeleteScreen extends StatefulWidget {

  @override
  State<DeleteScreen> createState() => _DeleteScreenState();
}

class _DeleteScreenState extends State<DeleteScreen> {
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 5.0),
            child: Row(
              children: [
                IconButton(onPressed: ()
                {
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios_new),
                  iconSize: 50.0,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0,),
                Text('Delete Your Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 80.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0),
            child: Text('By Deleting Your Account,Your Data Will Be Deleted, And Cannot Restore it Again ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
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
                    labelText: 'Enter Your Password',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIconColor: Colors.white,
                    border: OutlineInputBorder(

                    )),
                obscureText: true,
              ),
            ),
          ),
          SizedBox(height: 40.0,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 100.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0)
              ),
              height: 40.0,
              width: 200.0,
              child:
              MaterialButton(
                onPressed: ()
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
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
