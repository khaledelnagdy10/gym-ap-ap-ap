import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

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
          StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance
                .collection('users')
                .doc(FirebaseAuth.instance.currentUser!.uid)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final currentUser = UserData.fromMap(
                    snapshot.data!.data() as Map<String, dynamic>);

                return StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('users')
                      .where('userType', isEqualTo: currentUser.userType)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView(
                        children: snapshot.data!.docs.map((doc) {
                          final users = UserData.fromMap(
                              doc.data() as Map<String, dynamic>);

                          if (users.id !=
                              FirebaseAuth.instance.currentUser!.uid) {
                            return ListTile(
                              leading: const CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/images/IMG_6395.JPG')),
                              title: Text(
                                users.name,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 23),
                              ),
                              subtitle: const Text('loream iomps',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17)),
                            );
                          }
                          return const SizedBox();
                        }).toList(),
                      );
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return const SizedBox();
                  },
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
}

Widget BuildCard(userData) => Card(
      elevation: 30.0,
      child: ListTile(
        title: Text(userData.name),
        subtitle: const Text('we are here to improve make your body fit'),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: () {},
        ),
      ),
    );
Widget _buildChats() => Card(
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                radius: 10.0,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'ahmed samy',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                      'hello my name is ahmed samy hello my name is ahmed samy hello my name is ahmed samy hello my name is ahmed samy hello my name is ahmed samy',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    )),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: CircleAvatar(
                        radius: 5.0,
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
