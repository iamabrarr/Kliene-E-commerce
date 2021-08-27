import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Views/Screens/SignUpScreen/SignUpScreen.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';
import 'components/Buttons.dart';
import 'components/TextFields.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: size.height * 0.87,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/Images/BlurBackground.png"),
            )),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.1, vertical: size.height * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Image.asset("assets/Logo/Logo.png"),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  CommonText(
                      title: "Let's Login.",
                      sizeoffont: size.height * 0.05,
                      weightoffont: FontWeight.bold),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CommonText(
                          title: "Did'nt have an account? ",
                          sizeoffont: size.height * 0.019,
                          weightoffont: FontWeight.w300),
                      GestureDetector(
                        onTap: () {
                          Get.to(SignUp());
                        },
                        child: CommonText(
                            title: "Register",
                            sizeoffont: size.height * 0.019,
                            weightoffont: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  TextFields(size: size),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Buttons(size: size)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
