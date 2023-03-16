import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';

void main() => runApp(const Gif());

class Gif extends StatelessWidget {
  const Gif({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class ChestBarFlat extends StatefulWidget {

  @override
  _ChestBarFlatState createState() => _ChestBarFlatState();
}

class _ChestBarFlatState extends State<ChestBarFlat> with TickerProviderStateMixin {
  late FlutterGifController controller1, controller2, controller3, controller4;

  @override
  void initState() {
    controller1 = FlutterGifController(vsync: this);
    controller2 = FlutterGifController(vsync: this);
    controller4 = FlutterGifController(vsync: this);
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      controller1.repeat(
        min: 0,
        max: 53,
        period: const Duration(milliseconds: 200),
      );
    });
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      controller2.repeat(
        min: 0,
        max: 13,
        period: const Duration(milliseconds: 2500),
      );
      controller4.repeat(
        min: 0,
        max: 13,
        period: const Duration(milliseconds: 200),
      );
    });
    controller3 = FlutterGifController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
      reverseDuration: const Duration(milliseconds: 200),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('gif'),
        ),
        body: ListView(
          children: [
            GifImage(image: AssetImage('assets/gifs/chest/chestbarflat.gif'), controller: controller2,
            ),
          ],
        ),
      ),
    );
  }
}