import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:online_coaching/screens/coaches/coachnumone.dart';

import '../../core/models/user_model.dart';

class Coaches extends StatelessWidget {
  const Coaches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Online coaching.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 70.0,),
              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('users').where('userType',isEqualTo: 'coach').snapshots(),
                builder: (_,snapshot){
                  if(snapshot.hasData){
                    return ListView(
                        children: snapshot.data!.docs.map((doc) {
                          final userData = UserData.fromMap(doc.data() as Map<String,dynamic>);
                          return Padding(
                            padding: const EdgeInsetsDirectional.symmetric(horizontal: 40),
                            child: Container(
                              color: Colors.white12,
                              height: 110.0,
                              width: 300.0,
                              child: Row(
                                children: [
                                  userData.imageUrl.isEmpty?const  CircleAvatar(
                                    radius: 30.0,
                                    backgroundImage:
                                    AssetImage('assets/images/IMG_6395.JPG'),
                                  ):CircleAvatar(
                                    radius: 30.0,
                                    backgroundImage:
                                    NetworkImage(userData.imageUrl),
                                  ),
                                  const SizedBox(
                                    width: 15.0,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 25.0,),
                                        Text(
                                          userData.name,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),
                                        ),
                                        Row(
                                          children: [

                                            IconButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const CoachNumOne()));
                                                },
                                                icon: const Icon(Icons.arrow_right_alt))
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                    );
                  }else if (snapshot.connectionState == ConnectionState.waiting){
                    return const Center(child: CircularProgressIndicator());
                  }
                  return const SizedBox();
                },
              )
            ],
          ),
        ),
      ]),
    );
  }
}

Widget BuildCard() => Card(
      elevation: 30.0,
      child: ListTile(
        title: const Text('ahmed samy'),
        subtitle: const Text('we are here to improve make your body fit'),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: () {},
        ),
      ),
    );
Widget BuildChats() => Card(
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              const CircleAvatar(
                radius: 10.0,
              ),
              const Padding(
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
