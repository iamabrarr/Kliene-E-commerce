import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Views/Screens/MainScreen/MainScreen.dart';
import 'package:kliene/Views/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.off(MainScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage("assets/Images/splashScreenBackground.png"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/Logo/Logo.png"),
              SizedBox(
                height: 50,
              ),
              CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(primaryColor)),
            ],
          ),
        ),
      ),
    );
  }
}
