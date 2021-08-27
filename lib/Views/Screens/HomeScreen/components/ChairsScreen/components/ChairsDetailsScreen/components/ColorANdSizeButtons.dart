import 'package:flutter/material.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';

import 'ColorChoose.dart';
import 'SizeChoose.dart';

class ColorAndSizeButtons extends StatelessWidget {
  const ColorAndSizeButtons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
                title: "Color",
                sizeoffont: size.height * 0.022,
                weightoffont: FontWeight.w600),
            Row(
              children: [
                ColorChoose(size: size, color: Color(0xFFE8F5E9)),
                ColorChoose(
                  size: size,
                  color: Color(0xFFD7CCC8),
                ),
                ColorChoose(
                  size: size,
                  color: Color(0xFFBBDEFB),
                ),
                ColorChoose(
                  size: size,
                  color: Color(0xFFE1BEE7),
                ),
              ],
            )
          ],
        ),
      ),
      SizedBox(
        width: size.width * 0.1,
      ),
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
                title: "Size",
                sizeoffont: size.height * 0.022,
                weightoffont: FontWeight.w600),
            Row(
              children: [
                SizeChoose(
                  size: size,
                  title: "S",
                ),
                SizeChoose(
                  size: size,
                  title: "M",
                ),
                SizeChoose(
                  size: size,
                  title: "L",
                ),
                SizeChoose(
                  size: size,
                  title: "XL",
                ),
              ],
            )
          ],
        ),
      ),
    ]);
  }
}
