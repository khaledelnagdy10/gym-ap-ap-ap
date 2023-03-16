import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_coaching/core/global.dart';
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
  final gender = TextEditingController();

  String currentUserTypeSelected = 'user';

  AuthCubit({required this.authServices}) : super(AuthInitial());

  void onChangeValue(value){
    currentUserTypeSelected = value;
    emit(UserType());
  }

  registerUser() async {
    if (email.text.isEmpty || password.text.isEmpty || name.text.isEmpty) {
      emit(AuthFail(errorMessage: "Please complete the fields."));
      return;
    }

    if (name.text.length < 4) {
      emit(AuthFail(errorMessage: "Name length should be 4 characters or more."));
      return;
    }

    if (password.text.length < 8) {
      emit(AuthFail(errorMessage: "Password length should be 8 characters or more."));
      return;
    }

    emit(AuthLoading());
    try {
      await authServices.register(email.text.trim(), password.text.trim(), name.text.trim(), double.parse(weight.text.trim()),
          double.parse(height.text.trim()), gender.text.trim(), int.parse(age.text.trim()), level.text.trim(),currentUserTypeSelected );
      emit(AuthSuccess());
    } on FirebaseException catch (e) {
      emit(AuthFail(errorMessage: e.message!));
    }
  }

  loginUser() async {
    if (email.text.isEmpty || password.text.isEmpty) {
      emit(AuthFail(errorMessage: "Please complete the fields."));
      return;
    }

    if (password.text.length < 8) {
      emit(AuthFail(errorMessage: "Password length should be 8 characters or more."));
      return;
    }

    emit(AuthLoading());
    try {
      await authServices.login(email.text.trim(), password.text.trim());
      emit(AuthSuccess());
    } on FirebaseException catch (e) {
      emit(AuthFail(errorMessage: e.message!));
    }
  }

  static AuthCubit get(BuildContext context) => BlocProvider.of<AuthCubit>(context);
}
