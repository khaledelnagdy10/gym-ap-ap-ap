import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:online_coaching/models/user_model.dart';

class AuthServices {
  AuthServices._();

  static final instance = AuthServices._();
  final _auth = FirebaseAuth.instance;
  final _fireStore = FirebaseFirestore.instance;
  // User userDetails;

  Future<void> update(String name, double weight, double height, String gender,
      int age, String level) async {
    currentUser.user!.updateDisplayName(name);

    _fireStore
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .update({
      "name": name,
      "weight": weight,
      "age": age,
      "height": height,
      "gender": gender,
      "level": level
    });
  }

  Future<void> register(
      String email,
      String password,
      String name,
      double weight,
      double height,
      String gender,
      int age,
      String level,
      userType) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((currentUser) {
        currentUser.user!.updateDisplayName(name);

        _fireStore.collection('users').doc(currentUser.user?.uid).set(UserData(
              id: currentUser.user!.uid,
              name: name,
              email: email,
              weight: weight,
              height: height,
              gender: gender,
              userType: userType,
              age: age,
              level: level,
              imageUrl: '',
            ).toMap());
      });
    } catch (e, stack) {
      print("ERROR OCCURRED: $e, and stack is $stack");
    }
  }

  Future<void> login(String email, String password) async {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((currentUser) {});
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
