import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_coaching/view/auth/logic/auth_cubit.dart';
import 'package:online_coaching/view/auth/logic/auth_state.dart';
import 'package:online_coaching/view/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is AuthSuccess) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()));
      } else if (state is AuthFail) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              backgroundColor: Colors.red, content: Text(state.errorMessage)),
        );
      }
    }, builder: (context, state) {
      final cubit = AuthCubit.get(context);

      return Scaffold(
        backgroundColor: Colors.teal,
        body: Form(
          key: cubit.keyForm,
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Online coaching.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 80.0),
                      const Center(
                        child: Text(
                          'Login Now',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 56.0,
                      ),
                      _buildCustomTextFormField(
                          'email', Icons.email, cubit.email, false),
                      const SizedBox(
                        height: 15.0,
                      ),
                      _buildCustomTextFormField(
                          'password', Icons.lock, cubit.password, true),
                      const SizedBox(
                        height: 80.0,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 100.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0)),
                          width: 200.0,
                          child: MaterialButton(
                            onPressed: cubit.loginUser,
                            child: state is AuthLoading
                                ? const SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircularProgressIndicator())
                                : const Text(
                                    'Log In',
                                    style: TextStyle(color: Colors.black),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  bool isNumber(String string) {
    final numericRegex = RegExp(r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$');

    return numericRegex.hasMatch(string);
  }

  Widget _buildCustomTextFormField(label, icon, controller, obscure) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 40.0,
      ),
      child: SizedBox(
        width: 300.0,
        child: TextFormField(
          controller: controller,
          validator: (String? value) {
            if (value!.isEmpty) {
              return 'this field required';
            } else if (label != 'password' &&
                !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
              return 'please enter invalide email';
            } else if (label == 'password' && value.length < 8) {
              return 'password must be grater than 8 character';
            } else if (label == 'password' && isNumber(value)) {
              return 'the password must be not contains number only';
            }
            return null;
          },
          style: const TextStyle(color: Colors.white),
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
          obscureText: obscure,
        ),
      ),
    );
  }
}
