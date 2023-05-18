import 'dart:async';
import 'package:demo_project/signup/registration.dart';
import 'package:flutter/material.dart';



void main() => runApp(const MaterialApp(debugShowCheckedModeBanner: false,home:SplashPage()));


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    startSplashScreenTimer(); // calling startSplashScreenTimer method,to start the timer
  }

  startSplashScreenTimer() async { // Because we using Timer and it is a Future Object, we used async keyword
    var duration = const Duration(seconds: 4);
    return Timer(duration, navigationToNextPage);

  }

  void navigationToNextPage() async {
    Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => RegisterPage()),
          (Route<dynamic> route) => false,//
    );
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image(
            image:
            AssetImage('assets/images/logo.jpg'),
            height: 120,
          )
      ),
    );
  }
}




