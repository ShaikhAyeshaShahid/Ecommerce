import 'package:flutter/material.dart';

import 'IntroPage.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/app_logo.png')
          ],
        ),
      ),
    );
}
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Simulate some initialization process with a delay
    Future.delayed(Duration(seconds: 5), () {
      // Navigate to the main screen after the delay
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>
            IntroPage()), // Replace with your main screen widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/app_logo.png'),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
