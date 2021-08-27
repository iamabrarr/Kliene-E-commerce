import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Views/Widgets/CommonFlatButton.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';

import '../../../../constants.dart';

class OrderFailed extends StatelessWidget {
  const OrderFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(size.height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.1),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Image.asset(
                  "assets/Icons/close.png",
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Container(
                height: size.height * 0.35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Images/Texture2.png"))),
              ),
              CommonText(
                  title: "Your Order is Failed!",
                  sizeoffont: size.height * 0.0425,
                  weightoffont: FontWeight.bold),
              SizedBox(
                height: size.height * 0.01,
              ),
              Center(
                child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.7,
                    child: CommonText(
                        title:
                            "It is now very easy to reach the best quality among all the products on the internet!",
                        sizeoffont: size.height * 0.016,
                        weightoffont: FontWeight.w300)),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Center(
                child: CommonFlatButton(
                  title: "Checkout",
                  buttoncolor: primaryColor,
                  textcolor: Colors.white,
                  textsize: size.height * 0.025,
                  weightofFont: FontWeight.w600,
                  height: size.height * 0.07,
                  width: size.width * 0.8,
                  borderofbutton: false,
                  facebook: false,
                  Gmail: false,
                  isSocial: false,
                  pressed: () {
                    Get.back();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
