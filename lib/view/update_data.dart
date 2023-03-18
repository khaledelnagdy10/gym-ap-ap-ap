import 'package:flutter/material.dart';
import 'package:online_coaching/models/user_model.dart';
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
  UserData? userData;
  getUserData() async {
    _fireStore
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((data) {
      userData = UserData.fromMap(data.data() as Map<String, dynamic>);
    });
  }

  @override
  void initState() {
    getUserData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final levelUpdateController = TextEditingController(text: userData!.level);
    final ageUpdateController =
        TextEditingController(text: userData!.age.toString());
    final ganderUpdateController =
        TextEditingController(text: userData!.gender);
    final heightUpdateController =
        TextEditingController(text: userData!.height.toString());
    final weightUpdateController =
        TextEditingController(text: userData!.weight.toString());
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
                          userData!.name,
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          userData!.email,
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
                    controller: levelUpdateController,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 40.0,
                  ),
                  child: TextField(
                    controller: ganderUpdateController,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 40.0,
                  ),
                  child: TextField(
                    controller: weightUpdateController,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 40.0,
                  ),
                  child: TextField(
                    decoration: const InputDecoration(labelText: 'Height'),
                    controller: heightUpdateController,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 40.0,
                  ),
                  child: TextField(
                    controller: ageUpdateController,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
