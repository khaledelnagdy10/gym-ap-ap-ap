import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_coaching/core/services/auth_services.dart';
import 'package:online_coaching/features/auth/store/auth_cubit.dart';
import 'package:online_coaching/screens/PPP.dart';
import 'package:online_coaching/screens/chest%20training/chestbarflat.dart';
import 'package:online_coaching/screens/coaches/Coaches_Screen.dart';
import 'package:online_coaching/screens/Home_Screen.dart';
import 'package:online_coaching/screens/Maps_screen.dart';
import 'package:online_coaching/screens/Profile_Screen.dart';
import 'package:online_coaching/screens/training%20screens/Training_Number_TwoScreen.dart';
import 'package:online_coaching/screens/training%20screens/Training_Screen.dart';
import 'package:online_coaching/screens/arm%20training/arm_screen.dart';
import 'package:online_coaching/screens/back%20training/back_Screen.dart';
import 'package:online_coaching/screens/back%20training/backnumtwo_screen.dart';
import 'package:online_coaching/screens/cardio%20training/cardio_screen.dart';
import 'package:online_coaching/screens/coaches/coachnumone.dart';
import 'package:online_coaching/screens/firebase_options.dart';
import 'package:online_coaching/screens/leg%20training/leg_screen.dart';
import 'package:online_coaching/screens/rate_screen.dart';
import 'package:online_coaching/screens/shoulder%20training/shoulder_screen.dart';
import 'package:online_coaching/screens/welcome_screen.dart';

import 'screens/chest training/inclinechestpressmachine.dart';
import 'screens/databasetest.dart';
import 'screens/gifs.dart';
import 'screens/sidebar_screen.dart';
import 'screens/videos.dart';

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
        home: Rate_Screen()
      ),
    );
  }
}