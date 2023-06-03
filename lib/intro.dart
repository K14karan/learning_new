import 'package:demo/login.dart';
import 'package:flutter/material.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';
class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      ),
      onSkip: () => print('Skipping the intro slides'),
      footerBgColor: Colors.blue,
      activeDotColor: Colors.white,
      footerRadius: 18.0,
      indicatorType: IndicatorType.DIAMOND,
      skipText: 'Skip',
      textColor: Colors.white,
      slides: [
        IntroScreen(
          title: 'Search',
          imageAsset: 'assets/goa.jpg',
          description: 'Quickly find all your messages',
          headerBgColor: Colors.white,
        ),
        IntroScreen(
          title: 'Focused Inbox',
          headerBgColor: Colors.white,
          imageAsset: 'assets/Pesticide-banner.jpg',
          description: "We've put your most important, actionable emails here",
        ),
        IntroScreen(
          title: 'Social',
          headerBgColor: Colors.white,
          imageAsset: 'assets/goa.jpg',
          description: "Keep talking with your mates",
        ),
      ],
    );

    return Scaffold(
      body: screens,
    );
  }
}

