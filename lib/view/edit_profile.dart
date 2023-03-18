import 'package:flutter/material.dart';
import 'package:online_coaching/core/services/auth_services.dart';
import 'package:online_coaching/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

// ignore: camel_case_types
class _EditProfileState extends State<EditProfile> {
  final _fireStore = FirebaseFirestore.instance;
  final GlobalKey<FormState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Edit Profile'),
      ),
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
          StreamBuilder<DocumentSnapshot>(
            stream: _fireStore
                .collection('users')
                .doc(FirebaseAuth.instance.currentUser!.uid)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final userData = UserData.fromMap(
                    snapshot.data!.data() as Map<String, dynamic>);
                final levelUpdateController =
                    TextEditingController(text: userData.level);
                final ageUpdateController =
                    TextEditingController(text: userData.age.toString());
                currentSelectedGender = userData.gender;
                final heightUpdateController =
                    TextEditingController(text: userData.height.toString());
                final weightUpdateController =
                    TextEditingController(text: userData.weight.toString());
                final nameUpdateController =
                    TextEditingController(text: userData.name);
                return SingleChildScrollView(
                  child: Form(
                    key: key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        buildCustomDropdownButton(['male', 'famle'],
                            currentSelectedGender, changeValue),
                        buildCustomTextFormField(
                            'Name', Icons.person, nameUpdateController),
                        buildCustomTextFormField(
                            'Level', Icons.person_3, levelUpdateController),
                        buildCustomTextFormField('Weight', Icons.line_weight,
                            weightUpdateController),
                        buildCustomTextFormField(
                            'Height', Icons.height, heightUpdateController),
                        buildCustomTextFormField(
                            'Age', Icons.person, ageUpdateController),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: 100.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.0)),
                            width: 200.0,
                            height: 40.0,
                            child: MaterialButton(
                              onPressed: () {
                                if (!key.currentState!.validate()) {
                                  return;
                                }
                                update(
                                    nameUpdateController.text,
                                    double.parse(
                                        weightUpdateController.text.toString()),
                                    double.parse(
                                        heightUpdateController.text.toString()),
                                    currentSelectedGender,
                                    int.parse(
                                        ageUpdateController.text.toString()),
                                    levelUpdateController.text);
                              },
                              child: const Text(
                                'Confirm',
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
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              return const SizedBox();
            },
          )
        ],
      ),
    );
  }

  void changeValue(value) {
    setState(() {
      currentSelectedGender = value;
    });
  }

  String currentSelectedGender = 'male';

  Widget buildCustomDropdownButton(List<String> listOfValue, hint, function) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 40.0,
      ),
      child: SizedBox(
          width: 300.0,
          child: DropdownButton<String>(
            hint: Text(
              hint,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            borderRadius: BorderRadius.circular(20),
            style: const TextStyle(color: Colors.teal),
            items: listOfValue.map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              function(value!);
            },
          )),
    );
  }

  Widget buildCustomTextFormField(label, icon, controller) {
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 40.0, vertical: 10),
      child: SizedBox(
        width: double.infinity,
        child: TextFormField(
          controller: controller,
          style: const TextStyle(color: Colors.white),
          validator: (value) {
            if (value!.isEmpty) {
              return 'all field required';
            }
            return null;
          },
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            prefixIcon: Icon(icon),
            labelText: label,
            prefixIconColor: Colors.white,
            labelStyle: const TextStyle(
              color: Colors.white,
            ),
            suffixIconColor: Colors.white,
          ),
        ),
      ),
    );
  }

  void update(String name, double weight, double height, String gender, int age,
      String level) async {
    await AuthServices.instance
        .update(name, weight, height, gender, age, level);
  }
}
