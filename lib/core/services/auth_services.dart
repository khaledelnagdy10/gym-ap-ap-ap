import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:online_coaching/core/global.dart';
import 'package:online_coaching/models/user_model.dart';

class AuthServices {
  AuthServices._();

  static final instance = AuthServices._();
  final _auth = FirebaseAuth.instance;
  final _fireStore = FirebaseFirestore.instance;
  // User userDetails;

  Future<void> update(String email, String password, String name,double weight, double height, String gender, int age, String level,userType) async
  {
    currentUser.user!.updateDisplayName(name);
    userData = UserData(
      id: currentUser.user!.uid,
      name: name,
      email: email,
      weight: weight,
      height: height,
      gender: gender,
      userType: userType,
      age: age,
      level: level, imageUrl: '',
    );
    _fireStore.collection('users').doc(userData.id).update(userData.toMap());
  }

  Future<void> register(String email, String password, String name,double weight, double height, String gender, int age, String level,userType) async {
    try{
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ).then((currentUser) {


        currentUser.user!.updateDisplayName(name);
        userData = UserData(
          id: currentUser.user!.uid,
          name: name,
          email: email,
          weight: weight,
          height: height,
          gender: gender,
          userType: userType,
          age: age,
          level: level, imageUrl: '',
        );
        _fireStore.collection('users').doc(currentUser.user?.uid).set(userData.toMap());
      });
    }catch(e, stack){
      print ("ERROR OCCURRED: $e, and stack is $stack");
    }


  }

  Future<void> login(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password).then((currentUser) {
      _fireStore.collection('users').doc(currentUser.user?.uid).get().then((data) {
        userData = UserData(id: data.data()!['id'], name: data.data()!['name'], email: data.data()!['email'], weight: data.data()!['weight'], height: data.data()!['height'], gender: data.data()!['gender'], age: data.data()!['age'], level: data.data()!['level'],userType: data.data()!['userData'], imageUrl: '');
      });
    });
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Stream<User?> authStateStream() {
    return _auth.authStateChanges();
  }

  get currentUser {
    return _auth.currentUser;
  }
}
