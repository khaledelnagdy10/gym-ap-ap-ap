import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_coaching/features/auth/store/auth_cubit.dart';
import 'package:online_coaching/features/auth/store/auth_state.dart';
import 'package:online_coaching/view/welcome_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is AuthSuccess) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const WelcomeScreen()));
      }

      if (state is AuthFail) {
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
                          'Register Now',
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
                      _buildCustomDropdownButton(['coach', 'user'],
                          cubit.selectedUserType, cubit.onChangeUserType),
                      const SizedBox(
                        height: 15.0,
                      ),
                      _buildCustomTextFormField(
                          'user name', Icons.person_2, cubit.name),
                      const SizedBox(
                        height: 15.0,
                      ),
                      _buildCustomTextFormField(
                          'height', Icons.height, cubit.height),
                      const SizedBox(
                        height: 15.0,
                      ),
                      _buildCustomTextFormField(
                          'weight', Icons.line_weight, cubit.weight),
                      const SizedBox(
                        height: 15.0,
                      ),
                      _buildCustomTextFormField('age', Icons.person, cubit.age),
                      const SizedBox(
                        height: 15.0,
                      ),
                      _buildCustomDropdownButton(['male', 'famele'],
                          cubit.gender, cubit.onChangeGender),
                      const SizedBox(
                        height: 15.0,
                      ),
                      _buildCustomTextFormField(
                          'user level', Icons.numbers, cubit.level),
                      const SizedBox(
                        height: 15.0,
                      ),
                      _buildCustomTextFormField(
                          'Email', Icons.email, cubit.password),
                      const SizedBox(
                        height: 15.0,
                      ),
                      _buildCustomTextFormField(
                          'Password', Icons.lock, cubit.password),
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
                            onPressed: cubit.registerUser,
                            child: state is AuthLoading
                                ? const SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: CircularProgressIndicator())
                                : const Text(
                                    'Sign Up',
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

  Widget _buildCustomDropdownButton(List<String> listOfValue, hint, function) {
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

  Widget _buildCustomTextFormField(label, icon, controller) {
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
            } else if (label == 'email' && isEmail(value)) {
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
          obscureText: true,
        ),
      ),
    );
  }

  bool isNumber(String string) {
    final numericRegex = RegExp(r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$');

    return numericRegex.hasMatch(string);
  }

  bool isEmail(String value) => !RegExp(r'\S+@\S+\.\S+').hasMatch(value);
}
