import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Views/Screens/LoginOrRegisterScreen/LoginOrRegistor.dart';
import 'package:kliene/Views/Widgets/CommonFlatButton.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';
import 'package:kliene/Views/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.025,
          ),
          Container(
              height: size.height * 0.90,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                "assets/Images/splashScreenBackground.png",
              ))),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.30,
                  ),
                  Center(
                    child: Container(
                        child: Column(
                      children: [
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
                          title: "Next",
                          buttoncolor: primaryColor,
                          textcolor: Colors.white,
                          textsize: size.height * 0.02,
                          weightofFont: FontWeight.w500,
                          height: size.height * 0.055,
                          width: size.height * 0.15,
                          pressed: () {
                            Get.offAll(LoginOrRegistor());
                          },
                        )
                      ],
                    )),
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}
