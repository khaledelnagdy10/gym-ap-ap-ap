import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_coaching/core/services/auth_services.dart';
import 'package:online_coaching/features/auth/store/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthServices authServices;
  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();
  final height = TextEditingController();
  final weight = TextEditingController();
  final age = TextEditingController();
  final level = TextEditingController();

  final GlobalKey<FormState> keyForm = GlobalKey();

  String selectedUserType = 'user';
  String gender = 'male';

  AuthCubit({required this.authServices}) : super(AuthInitial());

  void onChangeUserType(value) {
    selectedUserType = value;
    emit(GanderType());
  }

  void onChangeGender(value) {
    gender = value;
    emit(GanderType());
  }

  registerUser() async {
    if (!keyForm.currentState!.validate()) return;

    emit(AuthLoading());
    try {
      await authServices.register(
          email.text.trim(),
          password.text.trim(),
          name.text.trim(),
          double.parse(weight.text.trim()),
          double.parse(height.text.trim()),
          gender,
          int.parse(age.text.trim()),
          level.text.trim(),
          selectedUserType);
      emit(AuthSuccess());
    } on FirebaseException catch (e) {
      emit(AuthFail(errorMessage: e.message!));
    }
  }

  loginUser() async {
    if (!keyForm.currentState!.validate()) return;
    emit(AuthLoading());
    try {
      await authServices.login(email.text.trim(), password.text.trim());
      emit(AuthSuccess());
    } on FirebaseException catch (e) {
      emit(AuthFail(errorMessage: e.message!));
    }
  }

  static AuthCubit get(BuildContext context) =>
      BlocProvider.of<AuthCubit>(context);
}
