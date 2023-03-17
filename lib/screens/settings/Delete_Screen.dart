// ignore: file_names
import 'package:flutter/material.dart';
import 'package:online_coaching/screens/Home_Screen.dart';


class DeleteScreen extends StatefulWidget {
  const DeleteScreen({super.key});


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
      decoration: const BoxDecoration(
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
          const SizedBox(height: 60.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 5.0),
            child: Row(
              children: [
                IconButton(onPressed: ()
                {
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back_ios_new),
                  iconSize: 50.0,
                  color: Colors.white,
                ),
                const SizedBox(width: 10.0,),
                const Text('Delete Your Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80.0,),
          const Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0),
            child: Text('By Deleting Your Account,Your Data Will Be Deleted, And Cannot Restore it Again ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
            ),
          ),
          const SizedBox(height: 50.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0),
            child: Container(
              width: 300.0,
              child: TextFormField(
                decoration: const InputDecoration(
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
          const SizedBox(height: 40.0,),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 100.0),
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
