import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_flutter_1/loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  initState() {
    super.initState();
    timerSplashScreen(context);
  }

  timerSplashScreen(context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
            child: Image(
                  height: 150,
                  width: 150,
                  image: AssetImage("assets/logo.png"),
                ),
          ),
    );
  }
}
