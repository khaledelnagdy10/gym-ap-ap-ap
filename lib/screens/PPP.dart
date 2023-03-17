import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class PPP extends StatefulWidget {
  const PPP({super.key});


  @override
  State<PPP> createState() => _PPPState();
}

class _PPPState extends State<PPP> {
  List users = [];
  CollectionReference usersref= FirebaseFirestore.instance.collection('users');

  getdata() async {
    var responsebody = await usersref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        users.add(element.data());
      });
    });

  }
  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
      itemCount: users.length,
       itemBuilder:(context,i){
         return ListTile(
           title: Text('${users[i]}'),
         ) ;
    }),
    );
  }
}
