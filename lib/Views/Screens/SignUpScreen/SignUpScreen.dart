import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Views/Screens/LogInScreen/LogIn.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';
import 'components/AllButtons.dart';
import 'components/AllTextfields.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: size.height * 0.87,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/Images/BlurBackground.png"),
            )),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Image.asset("assets/Logo/Logo.png"),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  CommonText(
                      title: "Let's Register.",
                      sizeoffont: size.height * 0.045,
                      weightoffont: FontWeight.bold),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(
                          title: "Do you have an account? ",
                          sizeoffont: size.height * 0.018,
                          weightoffont: FontWeight.w300),
                      GestureDetector(
                        onTap: () {
                          Get.to(LogIn());
                        },
                        child: CommonText(
                            title: "Login",
                            sizeoffont: size.height * 0.018,
                            weightoffont: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  AllTextfields(size: size),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  AllButtons(size: size)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
