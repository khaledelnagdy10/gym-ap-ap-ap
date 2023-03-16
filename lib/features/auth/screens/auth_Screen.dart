import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_coaching/core/global.dart';
import 'package:online_coaching/core/services/auth_services.dart';
import 'package:online_coaching/features/auth/store/auth_cubit.dart';
import 'package:online_coaching/features/auth/store/auth_state.dart';
import 'package:online_coaching/screens/Profile_Screen.dart';
import 'package:online_coaching/screens/welcome_screen.dart';

class AuthScreen extends StatefulWidget {
  final bool? isLogin;

  const AuthScreen({super.key, this.isLogin = false});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  String currentTypeSelected = 'user';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
      if (state is AuthSuccess) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const WelcomeScreen()));
      }

      if (state is AuthFail) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(backgroundColor: Colors.red, content: Text(state.errorMessage)),
        );
      }
    }, builder: (context, state) {
      final cubit = AuthCubit.get(context);

      return Scaffold(
        backgroundColor: Colors.teal,
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
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 80.0),
                    Center(
                      child: Text(
                        widget.isLogin! ? 'Login Now' : 'Register Now',
                        style: const TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,

                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 56.0,
                    ),
                    Visibility(
                      visible: !widget.isLogin!,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 40.0,
                        ),
                        child: SizedBox(
                          width: 300.0,
                          child: DropdownButton<String>(
                            hint: Text(cubit.currentUserTypeSelected),
                            borderRadius: BorderRadius.circular(20),
                            style: const TextStyle(color: Colors.teal),
                            items: ['coach','user'].map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem(child: Text(value),value: value,);

                            }).toList(),
                            onChanged: (value){
                             setState(() {

                               cubit.onChangeValue(value!);
                             });
                            },
                          )
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 56.0,
                    ),
                    Visibility(
                      visible: !widget.isLogin!,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 40.0,
                        ),
                        child: SizedBox(
                          width: 300.0,
                          child: TextField(
                            controller: cubit.name,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'User Name',
                              prefixIconColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Visibility(
                      visible: !widget.isLogin!,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 40.0,
                        ),
                        child: SizedBox(
                          width: 300.0,
                          child: TextField(
                            controller: cubit.height,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'height',
                              prefixIconColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Visibility(
                      visible: !widget.isLogin!,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 40.0,
                        ),
                        child: SizedBox(
                          width: 300.0,
                          child: TextField(
                            controller: cubit.weight,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'weight',
                              prefixIconColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Visibility(
                      visible: !widget.isLogin!,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 40.0,
                        ),
                        child: SizedBox(
                          width: 300.0,
                          child: TextField(
                            controller: cubit.age,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'age',
                              prefixIconColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Visibility(
                      visible: !widget.isLogin!,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 40.0,
                        ),
                        child: SizedBox(
                          width: 300.0,
                          child: TextField(
                            controller: cubit.gender,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'User gender',
                              prefixIconColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Visibility(
                      visible: !widget.isLogin!,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 40.0,
                        ),
                        child: SizedBox(
                          width: 300.0,
                          child: TextField(
                            controller: cubit.level,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'User level',
                              prefixIconColor: Colors.white,
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 40.0,
                      ),
                      child: SizedBox(
                        width: 300.0,
                        child: TextField(
                          controller: cubit.email,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email),
                            labelText: 'Email Address',
                            prefixIconColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 40.0,
                      ),
                      child: SizedBox(
                        width: 300.0,
                        child: TextField(
                          controller: cubit.password,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            // suffixIcon: Icon(Icons.remove_red_eye),
                            labelText: 'Password',
                            prefixIconColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            suffixIconColor: Colors.white,
                          ),
                          obscureText: true,
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 15.0,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsetsDirectional.symmetric(
                    //     horizontal: 40.0,
                    //   ),
                    //   child: SizedBox(
                    //     width: 300.0,
                    //     child: TextFormField(
                    //       decoration: const InputDecoration(
                    //         border: OutlineInputBorder(),
                    //         prefixIcon: Icon(Icons.lock),
                    //         suffixIcon: Icon(Icons.remove_red_eye),
                    //         labelText: 'Confirm Password',
                    //         prefixIconColor: Colors.white,
                    //         labelStyle: TextStyle(
                    //           color: Colors.white,
                    //         ),
                    //         suffixIconColor: Colors.white,
                    //       ),
                    //       obscureText: true,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(
                      height: 80.0,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.symmetric(horizontal: 100.0),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
                        width: 200.0,
                        child: MaterialButton(
                          onPressed: widget.isLogin! ? cubit.loginUser : cubit.registerUser,
                          child: state is AuthLoading
                              ? const SizedBox(width: 25, height: 25, child: CircularProgressIndicator())
                              : Text(
                                  widget.isLogin! ? 'Log In' : 'Sign Up',
                                  style: const TextStyle(color: Colors.black),
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
      );
    });
  }
}
