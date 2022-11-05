import 'dart:async';
import 'package:flutter/material.dart';

import '../utils/styles.dart';
import 'home_screen.dart';

// creating a class that extends a statefull widget to implement a splash screen
class SplashScreen extends StatefulWidget {
  static const routeName = '/splashscreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // declaring _timer
  Timer? _timer;

  // setting delay
  _startDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  // navigating to next page
  _goNext() {
    Navigator.pushReplacementNamed(context, Home.routeName);
  }

  // calling the _startDelay function in initstate
  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.40),
            Center(
              // text widget for displaying the name of app
              child: Text(
                'RESUME APP',
                style: Styles.splashStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
