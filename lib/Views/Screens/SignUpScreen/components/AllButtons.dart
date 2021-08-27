import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Controllers/SignUpControllers.dart';
import 'package:kliene/Views/Widgets/CommonFlatButton.dart';

import '../../../constants.dart';

class AllButtons extends StatelessWidget {
  const AllButtons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final validateController = Get.put(SignUpController());
    return Column(
      children: [
        CommonFlatButton(
          isSocial: false,
          borderofbutton: false,
          title: "Register",
          buttoncolor: primaryColor,
          textcolor: Colors.white,
          textsize: size.height * 0.025,
          weightofFont: FontWeight.bold,
          height: size.height * 0.07,
          width: size.width * 0.80,
          facebook: false,
          Gmail: false,
          pressed: () {
            validateController.register();
          },
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonFlatButton(
              isSocial: true,
              borderofbutton: true,
              title: "Facebook",
              buttoncolor: Colors.white,
              textcolor: Colors.grey,
              textsize: size.height * 0.018,
              weightofFont: FontWeight.w500,
              height: size.height * 0.05,
              width: size.width * 0.385,
              facebook: true,
              Gmail: false,
            ),
            SizedBox(
              width: 10,
            ),
            CommonFlatButton(
              isSocial: true,
              borderofbutton: true,
              title: "Gmail",
              buttoncolor: Colors.white,
              textcolor: Colors.grey,
              textsize: size.height * 0.018,
              weightofFont: FontWeight.w500,
              height: size.height * 0.05,
              width: size.width * 0.385,
              facebook: false,
              Gmail: true,
            )
          ],
        )
      ],
    );
  }
}
