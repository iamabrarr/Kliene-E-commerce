import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Controllers/AddAnewCardController.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';
import 'package:kliene/Views/constants.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    Key? key,
    required this.size,
    required this.title,
    required this.icons,
    required this.tw,
    required this.w,
    this.validation,
  }) : super(key: key);

  final Size size;
  final String title;
  final Icon icons;
  final double tw;
  final double w;
  final validation;
  @override
  Widget build(BuildContext context) {
    final cardController = Get.put(AddaNewCardController());
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CommonText(
          title: title,
          sizeoffont: size.height * 0.018,
          weightoffont: FontWeight.w300),
      SizedBox(
        height: size.height * 0.01,
      ),
      Padding(
        padding: const EdgeInsets.only(top: defaultPadding),
        child: Container(
          height: size.height * 0.035,
          width: tw,
          child: TextFormField(
            decoration:
                InputDecoration(prefixIcon: icons, border: InputBorder.none),
            validator: validation,
          ),
        ),
      ),
      Container(
        height: 1,
        width: w,
        color: Colors.grey[350],
      ),
      SizedBox(
        height: size.height * 0.02,
      )
    ]);
  }
}
