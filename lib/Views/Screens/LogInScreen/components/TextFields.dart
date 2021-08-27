import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Views/Widgets/CommonTextField.dart';

import '../../../constants.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final validateController1 = Get.put(SignInController());
    return Form(
      // key: validateController1.loginformkey,
      child: Column(children: [
        CommonTextField(
            size: size,
            color: secondaryColor,
            hinttext: "Email Address",
            checkborderRadius: true,
            keyboard: TextInputType.emailAddress),
        CommonTextField(
            size: size,
            color: secondaryColor,
            hinttext: "Password",
            checkborderRadius: true,
            keyboard: TextInputType.emailAddress),
      ]),
    );
  }
}

class SignInController {}
