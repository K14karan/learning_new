import 'package:flutter/material.dart';



class CountDownPage extends StatefulWidget {
  const CountDownPage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _CountDownPageState createState() => _CountDownPageState();
}

class _CountDownPageState extends State<CountDownPage> with TickerProviderStateMixin {
  String counter = "";
  late AnimationController _controller;
  int levelClock = 7200;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: Duration(
            seconds:
            levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
    );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Countdown(
              vsync: this,
              animation: StepTween(
                begin: levelClock, // THIS IS A USER ENTERED NUMBER
                end: 0,
              ).animate(_controller), key:const Key("5"),
            ),
            Text(
              counter,
              style:const TextStyle(color: Colors.black87,fontSize: 16),
            ),
          ],
        ),
      ),

    );
  }
}

class Countdown extends AnimatedWidget {
  Countdown({required Key key, required this.animation, required _CountDownPageState vsync}) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inHours.remainder(60).toString()}:${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';
    //
    // print('animation.value  ${animation.value} ');
    // print('inMinutes ${clockTimer.inHours.toString()}');
    // print('inMinutes ${clockTimer.inMinutes.toString()}');
    // print('inSeconds ${clockTimer.inSeconds.toString()}');
    // print('inSeconds.remainder ${clockTimer.inSeconds.remainder(60).toString()}');

    return Text(
      timerText,
      style: const TextStyle(
        fontSize:16,
        color:Colors.black87,fontWeight: FontWeight.w600
      ),
    );
  }
}