import 'package:flutter/material.dart';

import '../../../constants.dart';

class UpperSearchFieldSection extends StatelessWidget {
  const UpperSearchFieldSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: size.height * 0.05,
              width: size.width * 0.65,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(05))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            "assets/Icons/search.png",
                          )),
                      border: InputBorder.none,
                      hintText: "Search Now",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[500])),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.04,
            ),
            Container(
              height: size.height * 0.05,
              width: size.width * 0.11,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(05)),
              child: Image.asset(
                "assets/Icons/Scan.png",
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Container(
              height: size.height * 0.05,
              width: size.width * 0.11,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(05)),
              child: Image.asset(
                "assets/Icons/Voice.png",
              ),
            )
          ],
        )
      ],
    );
  }
}
