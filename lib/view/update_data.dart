import 'package:flutter/material.dart';
import 'package:online_coaching/core/global.dart';
import 'package:online_coaching/core/models/user_model.dart';
import 'package:online_coaching/view/settings/setting_Screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class update_data extends StatefulWidget {
  const update_data({super.key});

  @override
  State<update_data> createState() => _update_dataState();
}

// ignore: camel_case_types
class _update_dataState extends State<update_data> {
  final _fireStore = FirebaseFirestore.instance;

  getUserData() async {
    _fireStore.collection('users').doc(userData.id).get().then((data) {
      userData = UserData.fromMap(data.data() as Map<String, dynamic>);
    });
  }

  final _levelUpdateController = TextEditingController(text: userData.level);
  final _ageUpdateController =
      TextEditingController(text: userData.age.toString());
  final _ganderUpdateController = TextEditingController(text: userData.gender);
  final _heightUpdateController =
      TextEditingController(text: userData.height.toString());
  final _weightUpdateController =
      TextEditingController(text: userData.weight.toString());

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding:
                    const EdgeInsetsDirectional.symmetric(horizontal: 35.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/images/IMG_6395.JPG'),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userData.name,
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          userData.email,
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingsScreen()));
                      },
                      icon: const Icon(Icons.settings_rounded),
                      iconSize: 50.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 40.0,
                ),
                child: Text(
                  'My Info',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 40.0,
                  ),
                  child: TextField(
                    controller: _levelUpdateController,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 40.0,
                  ),
                  child: TextField(
                    controller: _ganderUpdateController,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 40.0,
                ),
                child: TextField(
                  controller: _weightUpdateController,
                )
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 40.0,
                ),
                child: TextField( decoration: InputDecoration(labelText: 'Height'),
                  controller: _heightUpdateController,
                )
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 40.0,
                ),
                child: TextField(
                  controller: _ageUpdateController,
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}