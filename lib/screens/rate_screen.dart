import 'package:flutter/material.dart';

class Rate_Screen extends StatefulWidget {
  @override
  State<Rate_Screen> createState() => _Rate_ScreenState();
}

// ignore: camel_case_types
class _Rate_ScreenState extends State<Rate_Screen> {
  int _rating = 0;

  void rate(int rating) {
    //Other actions based on rating such as api calls.
    setState(() {
      _rating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Rating"),
      ),
      body: Center(
        child: SizedBox(
          width: 500.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Icon(
                  Icons.star,
                  color: _rating >= 1 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(1),
              ),
              GestureDetector(
                child: Icon(
                  Icons.star,
                  color: _rating >= 2 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(2),
              ),
              GestureDetector(
                child: Icon(
                  Icons.star,
                  color: _rating >= 3 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(3),
              ),
              GestureDetector(
                child: Icon(
                  Icons.star,
                  color: _rating >= 4 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(4),
              ),
              GestureDetector(
                child: Icon(
                  Icons.star,
                  color: _rating >= 5 ? Colors.orange : Colors.grey,
                ),
                onTap: () => rate(5),
              )
            ],
          ),
        ),
      ),
    );
  }
}
