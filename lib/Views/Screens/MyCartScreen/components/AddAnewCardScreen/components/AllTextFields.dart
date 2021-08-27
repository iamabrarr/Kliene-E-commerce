import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Controllers/AddAnewCardController.dart';

import 'CardDetails.dart';

class AllTextFields extends StatelessWidget {
  const AllTextFields({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final cardController = Get.put(AddaNewCardController());
    return Form(
      key: cardController.formKey,
      child: Column(children: [
        CardDetails(
          size: size,
          w: size.width * 0.9,
          tw: size.width * 0.75,
          title: "Card Holder",
          icons: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          validation: (value) {
            return cardController.validateCardName(value);
          },
        ),
        CardDetails(
          size: size,
          w: size.width * 0.9,
          tw: size.width * 0.75,
          title: "Card Number",
          icons: Icon(
            Icons.credit_card,
            color: Colors.grey,
          ),
          validation: (value) {
            return cardController.validateCardNumber(value);
          },
        ),
        Row(
          children: [
            CardDetails(
                w: size.width * 0.4,
                tw: size.width * 0.3,
                size: size,
                title: "Expiry Date",
                icons: Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),
                validation: (value) {
                  return cardController.validateExpiry(value);
                }),
            Spacer(),
            CardDetails(
                w: size.width * 0.4,
                tw: size.width * 0.3,
                size: size,
                title: "CCV",
                icons: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                validation: (value) {
                  return cardController.validatePIN(value);
                }),
          ],
        ),
      ]),
    );
  }
}
