import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Stopwatch _stopwatch = Stopwatch();
  @override
  void initState() {
    super.initState();
    _stopwatch.start();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/bg.png'),
          frameBuilder: (BuildContext? context, Widget? child, int? frame, bool wasSynchronouslyLoaded) {
            _stopwatch.stop();
            print('With precacheImage: ${_stopwatch.elapsed.inMilliseconds} milliseconds');
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: child,
            );
          },
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
        ),
      ],
    );
  }
}
