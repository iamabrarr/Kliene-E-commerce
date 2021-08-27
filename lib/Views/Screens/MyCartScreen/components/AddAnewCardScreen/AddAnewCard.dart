import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Controllers/AddAnewCardController.dart';
import 'package:kliene/Views/Widgets/CommonFlatButton.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';
import 'package:kliene/Views/constants.dart';
import 'components/AllTextFields.dart';

class AddAnewCard extends StatelessWidget {
  const AddAnewCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cardControllerr = Get.put(AddaNewCardController());
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.height * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      "assets/Icons/close.png",
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: size.width * 0.07),
                  CommonText(
                      title: "Add A New Card",
                      sizeoffont: size.height * 0.03,
                      weightoffont: FontWeight.w400),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                height: 1,
                color: Colors.grey[350],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                  height: size.height * 0.35,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Images/Texture.png"))),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Images/Card.png"))),
                  )),
              SizedBox(
                height: size.height * 0.02,
              ),
              AllTextFields(size: size),
              SizedBox(
                height: size.height * 0.01,
              ),
              Center(
                child: CommonFlatButton(
                  title: "Save Card",
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
                    cardControllerr.saveCard();
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
