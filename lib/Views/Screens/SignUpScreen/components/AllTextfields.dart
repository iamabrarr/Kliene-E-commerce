import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Controllers/SignUpControllers.dart';
import 'package:kliene/Views/Widgets/CommonTextField.dart';

import '../../../constants.dart';

class AllTextfields extends StatelessWidget {
  const AllTextfields({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final validateController = Get.put(SignUpController());
    return Form(
      key: validateController.cardKey,
      child: Column(
        children: [
          CommonTextField(
            keyboard: TextInputType.name,
            size: size,
            hinttext: "Username",
            checkborderRadius: true,
            color: secondaryColor,
            validations: (value) {
              return validateController.validateUsername(value);
            },
          ),
          CommonTextField(
            keyboard: TextInputType.visiblePassword,
            size: size,
            hinttext: "Password",
            checkborderRadius: true,
            color: secondaryColor,
            validations: (value) {
              return validateController.validatePassword(value);
            },
          ),
          CommonTextField(
            keyboard: TextInputType.emailAddress,
            size: size,
            hinttext: "Email Address",
            checkborderRadius: true,
            color: secondaryColor,
            validations: (value) {
              return validateController.validateEmail(value);
            },
          ),
          CommonTextField(
            keyboard: TextInputType.number,
            size: size,
            hinttext: "Phone Number",
            checkborderRadius: true,
            color: secondaryColor,
            validations: (value) {
              return validateController.validatePhoneNumber(value);
            },
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
        ],
      ),
    );
  }
}
