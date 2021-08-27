import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Views/Screens/MyCartScreen/components/PlaceOrderScreen/PlaceOrderScreen.dart';

class AddaNewCardController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String pin = "123456";
  String? validateCardName(String value) {
    if (value.isEmpty) {
      return "Please Enter Your Name";
    } else {
      return null;
    }
  }

  String? validateCardNumber(String value) {
    if (value.isEmpty) {
      return "Please Enter Card Number";
    } else if (value.length <= 12) {
      return "Please Enter Valid Number";
    } else {
      return null;
    }
  }

  String? validateExpiry(String value) {
    if (value.isEmpty) {
      return "Please Enter Date";
    }
    // if (!GetUtils.isDateTime(value)) {
    //   return "Please Enter Valid Date";
    // }
    else {
      return null;
    }
  }

  String? validatePIN(String value) {
    if (value.isEmpty) {
      return "Please Enter CCV";
    }
    if (value != pin) {
      return "Incorrect PIN";
    } else {
      return null;
    }
  }

  saveCard() {
    final isvalid = formKey.currentState!.validate();
    if (!isvalid) {
      return null;
    } else {
      return Get.to(PlaceOrderScreen());
    }
  }
}
