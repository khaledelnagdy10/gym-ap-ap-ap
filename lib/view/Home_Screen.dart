import 'package:flutter/material.dart';
import 'package:online_coaching/view/coaches/home_widget.dart';
import 'package:online_coaching/view/map_screen.dart';
import 'package:online_coaching/view/profile_screen.dart';
import 'package:online_coaching/view/training%20screens/workout_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;

  final List<Widget> screens = [
    const HomeWidget(),
    const TrainingScreen(),
    const MapScreen(),
    const ProfileScreen()
  ];

  changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        showUnselectedLabels: true,
        fixedColor: Colors.black,
        currentIndex: currentIndex,
        onTap: changeIndex,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/gym.png',
              width: 30,
              height: 30,
            ),
            label: 'Workout',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              color: Colors.black,
            ),
            label: 'Maps',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Online coaching.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        screens[currentIndex]
      ]),
    );
  }
}
