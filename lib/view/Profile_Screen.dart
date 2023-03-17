import 'package:flutter/material.dart';
import 'package:online_coaching/core/global.dart';
import 'package:online_coaching/models/user_model.dart';
import 'package:online_coaching/view/settings/setting_Screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'update_data.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});


  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _fireStore = FirebaseFirestore.instance;

  getUserData() async {
    _fireStore.collection('users').doc(userData.id).get().then((data) {
      userData = UserData(id: data.data()!['id'], name: data.data()!['name'], email: data.data()!['email'], weight: data.data()!['weight'], height: data.data()!['height'], gender: data.data()!['gender'], age: data.data()!['age'], level: data.data()!['level'],userType: data.data()!['userData'], imageUrl: '');
    });
  }




  @override
  void initState() {
    super.initState();
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body:

        Stack(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                const SizedBox(height: 100,),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 35.0),
                  child: Row(
                    children:
                    [
                      const CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(
                            'assets/images/IMG_6395.JPG'),
                      ),
                      const SizedBox(width: 10.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${userData.name}', style: const TextStyle(fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),),
                          Text('${userData.email}', style: const TextStyle(fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),),

                        ],
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => SettingsScreen())
                          );
                        },
                        icon: const Icon(Icons.settings_rounded),
                        iconSize: 50.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
                  child: Text(
                    'My Info',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
                  child: Text(
                    'Level Of Training : ${userData.level}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
                  child: Text(
                    'Gender : ${userData.gender}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
                  child: Text(
                    'Weight : ${userData.weight}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
                  child: Text(
                    'height : ${userData.height}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
                  child: Text(
                    'age : ${userData.age}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>const update_data()
                  ),
                  );
                },
                  child:
                  const Text('Update', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

                ),

              ],
            ),

          ],
        ),
      );
    }
  }
