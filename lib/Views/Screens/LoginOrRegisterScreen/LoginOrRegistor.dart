import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Views/Screens/LogInScreen/LogIn.dart';
import 'package:kliene/Views/Screens/SignUpScreen/SignUpScreen.dart';
import 'package:kliene/Views/Widgets/CommonFlatButton.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';

import '../../constants.dart';

class LoginOrRegistor extends StatelessWidget {
  const LoginOrRegistor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height * 0.87,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            "assets/Images/BlurBackground.png",
          ))),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.15,
              ),
              Center(
                child: Container(
                    child: Column(
                  children: [
                    Image.asset("assets/Logo/Logo.png"),
                    SizedBox(
                      height: size.height * 0.10,
                    ),
                    CommonText(
                      title: "The Right Address",
                      sizeoffont: size.height * 0.045,
                      weightoffont: FontWeight.w600,
                    ),
                    CommonText(
                      title: "For Shopping",
                      sizeoffont: size.height * 0.045,
                      weightoffont: FontWeight.w600,
                    ),
                    CommonText(
                      title: "Anyday",
                      sizeoffont: size.height * 0.045,
                      weightoffont: FontWeight.w600,
                    ),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    Container(
                        width: size.width * 0.65,
                        child: Column(children: [
                          CommonText(
                              title: "It is now very easy to reach",
                              sizeoffont: size.height * 0.022,
                              weightoffont: FontWeight.w300),
                          CommonText(
                              title: "the best quality among all",
                              sizeoffont: size.height * 0.022,
                              weightoffont: FontWeight.w300)
                        ])),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    CommonFlatButton(
                      isSocial: false,
                      facebook: false,
                      Gmail: false,
                      borderofbutton: false,
                      title: "Registor",
                      buttoncolor: primaryColor,
                      textcolor: Colors.white,
                      weightofFont: FontWeight.w500,
                      textsize: size.height * 0.02,
                      height: size.height * 0.075,
                      width: size.width * 0.7,
                      pressed: () {
                        Get.to(SignUp());
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CommonFlatButton(
                      isSocial: false,
                      facebook: false,
                      Gmail: false,
                      borderofbutton: false,
                      title: "Log In",
                      buttoncolor: secondaryColor,
                      textcolor: Colors.black,
                      weightofFont: FontWeight.w500,
                      textsize: size.height * 0.02,
                      height: size.height * 0.075,
                      width: size.width * 0.7,
                      pressed: () {
                        Get.to(LogIn());
                      },
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
