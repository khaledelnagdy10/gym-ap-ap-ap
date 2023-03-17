// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthState {}

class AuthInitial implements AuthState {}

class AuthLoading implements AuthState {}

class AuthSuccess implements AuthState {}

class UserType implements AuthState {

}

class AuthFail implements AuthState {
  final String errorMessage;
  AuthFail({required this.errorMessage});
}
