import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_coaching/core/services/auth_services.dart';
import 'package:online_coaching/view/auth/logic/auth_cubit.dart';
import 'package:online_coaching/view/welcome_screen.dart';
import 'package:online_coaching/view/firebase_options.dart';
import 'package:online_coaching/view/home_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (_) => AuthCubit(authServices: AuthServices.instance),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: StreamBuilder(
            stream: FirebaseAuth.instance.userChanges(),
            builder: (_, snapshot) {
              if (snapshot.data != null) {
                return const HomeScreen();
              } else {
                return const WelcomeScreen();
              }
            },
          )),
    );
  }
}
