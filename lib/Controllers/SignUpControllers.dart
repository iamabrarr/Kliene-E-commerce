import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kliene/Views/constants.dart';

class SignUpController extends GetxController {
  GlobalKey<FormState> cardKey = GlobalKey<FormState>();
  String? validateUsername(String value) {
    if (value.isEmpty) {
      return "Please Enter Username";
    }
    if (!GetUtils.isUsername(value)) {
      return "Enter Valid username";
    } else {
      return null;
    }
  }

  String? validatePhoneNumber(String value) {
    if (value.isEmpty) {
      return "Please Enter Phone Number";
    }
    if (!GetUtils.isPhoneNumber(value)) {
      return "Enter Valid Phone Number";
    } else {
      return null;
    }
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return "Please Enter Email Address";
    }
    if (!GetUtils.isEmail(value)) {
      return "Enter Valid Email";
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "Please Enter Password";
    }
    if (value.length <= 6) {
      return "Password must be of atleast 6 characters";
    } else {
      return null;
    }
  }

  void register() {
    final isvalid = cardKey.currentState!.validate();
    if (!isvalid) {
      return Get.snackbar("Something went wrong", "Please fill all the blanks",
          barBlur: 1000);
    } else {
      Get.defaultDialog(
        title: "",
        titleStyle: TextStyle(color: primaryColor),
        middleText: "Account Created",
      );
    }
  }
}
