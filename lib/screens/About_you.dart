import 'package:flutter/material.dart';
import 'package:online_coaching/screens/Profile_Screen.dart';


class AboutYou extends StatefulWidget {
  @override
  State<AboutYou> createState() => _AboutYouState();
}

class _AboutYouState extends State<AboutYou> {
  int height = 170;
  int weight = 60;
  int age = 20;
  bool ismale=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Online coaching.png',),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children:
                [
                  SizedBox(height: 50.0,),
                  Text(
                    'About You',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Text(
                    'Select Your Gender',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 40.0,),
                    child: Row(
                      children:
                      [
                        GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              ismale=true;
                            });
                          },
                          child: Container(
                            width: 150.0,
                            decoration: BoxDecoration(
                              color: ismale? Colors.blue:Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text(
                                'Male',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              ismale=false;
                            });
                          },
                          child: Container(
                            width: 170.0,
                            decoration: BoxDecoration(
                                color: !ismale?Colors.blue:Colors.white,
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: Center(
                              child: Text(
                                'Female',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height:40.0,
                  ),
                  Container(
                    height: 200.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Text('AGE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                          ),
                        ),
                        Text('${age}',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              mini: true,
                              child: Icon(
                                Icons.add,
                              ),
                              heroTag: 'age+',
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              mini: true,
                              child: Icon(
                                Icons.remove,
                              ),
                              heroTag: 'age-',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal:55.0),
                    child: Row(
                      children:
                      [
                        Container(
                          height: 200.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Text('weight',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35.0,
                                ),
                              ),
                              Text('${weight.round()}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    mini: true,
                                    child: Icon(
                                      Icons.add,
                                    ),
                                    heroTag: 'weight+',
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                    heroTag: 'weight-',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 15.0,),
                        Container(
                          height: 200.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Text('height',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35.0,
                                ),
                              ),
                              Text('${height.round()}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25.0,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:
                                [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        height++;
                                      });
                                    },
                                    mini: true,
                                    child: Icon(
                                      Icons.add,
                                    ),
                                    heroTag: 'height+',
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        height--;
                                      });
                                    },
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                    heroTag: 'height-',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0,),
                    ),
                    width: 130.0,
                    child: Center(
                      child: MaterialButton(
                          child: Text('NEXT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 35.0,
                            ),
                          ),
                          onPressed: ()
                          {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>ProfileScreen()
                            ),
                            );
                          }
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
  }
}