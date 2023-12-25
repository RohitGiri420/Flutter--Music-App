import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spotify/homePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

void init(){
  super.initState();
  
  Timer(Duration(
    seconds: 2
  ), () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homePage() ,));
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromRGBO(25, 61, 123, 1), Colors.black,
          ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          ),
          child: Center(
              child: LottieBuilder.asset('asset/lottie/animation.json'))),
    );
  }
}
