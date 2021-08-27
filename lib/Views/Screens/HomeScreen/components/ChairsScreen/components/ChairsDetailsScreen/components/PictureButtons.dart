import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PictureButtons extends StatelessWidget {
  const PictureButtons({
    Key? key,
    required this.size,
    required this.t,
    required this.l,
    required this.r,
    required this.b,
    required this.icon,
  }) : super(key: key);

  final Size size;
  final double t;
  final double l;
  final double r;
  final double b;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: t,
      left: l,
      child: Container(
        height: size.height * 0.055,
        width: size.width * 0.12,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
        child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Image.asset(icon)),
      ),
    );
  }
}
