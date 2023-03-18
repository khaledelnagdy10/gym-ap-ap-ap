import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Online coaching.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ]),
    );
  }
}

Widget BuildCard() => Card(
      elevation: 30.0,
      child: ListTile(
        title: const Text('ahmed samy'),
        subtitle: const Text('we are here to improve make your body fit'),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: () {},
        ),
      ),
    );
Widget _buildChats() => Card(
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              const CircleAvatar(
                radius: 10.0,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'ahmed samy',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    const Expanded(
                        child: Text(
                      'hello my name is ahmed samy hello my name is ahmed samy hello my name is ahmed samy hello my name is ahmed samy hello my name is ahmed samy',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    )),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: CircleAvatar(
                        radius: 5.0,
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
