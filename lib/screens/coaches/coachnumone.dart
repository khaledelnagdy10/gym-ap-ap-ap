import 'package:flutter/material.dart';
import 'package:online_coaching/screens/rate_screen.dart';

class CoachNumOne extends StatelessWidget {
  const CoachNumOne({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              const SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 35.0),
                child: Row(
                  children:
                  [
                    const CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage('assets/images/IMG_6395.JPG'),
                    ),
                    const SizedBox(width: 10.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('User Name',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                        Text('Email Adress',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
                      ],
                    ),
                    const SizedBox(width: 5.0),
                    IconButton(
                      onPressed: (){
                      },
                      icon: const Icon(Icons.settings_rounded),
                      iconSize: 50.0,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
                child: Text(
                  'My Info',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30.0,),
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal:40.0,),
                child: Text(
                  'Certificates : ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30.0,),
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
                child: Text(
                  'Intagram : ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30.0,),
              const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
                child: Text(
                  'Facebook : ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 40.0),
                child: TextButton(onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Rate_Screen()));
                },
                  child:const Text('Rate Your Coach',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ), ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
