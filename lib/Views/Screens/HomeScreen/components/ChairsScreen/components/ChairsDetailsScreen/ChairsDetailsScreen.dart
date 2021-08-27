import 'package:flutter/material.dart';
import 'package:kliene/Views/Widgets/CommonFlatButton.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';
import 'package:kliene/Views/Widgets/SimpleLine.dart';
import 'package:kliene/Views/constants.dart';
import 'package:kliene/models/Chairs.dart';
import 'components/ColorANdSizeButtons.dart';
import 'components/PictureButtons.dart';

class DetailsChairsScreen extends StatelessWidget {
  const DetailsChairsScreen({Key? key, required this.showchair})
      : super(key: key);
  final String showchair;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(size.height * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.45,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(showchair))),
                ),
                PictureButtons(
                  size: size,
                  icon: 'assets/Icons/close.png',
                  l: 4,
                  t: 0,
                  r: 96,
                  b: 100,
                ),
                PictureButtons(
                  size: size,
                  icon: 'assets/Icons/Send.png',
                  l: size.height * 0.33,
                  t: size.height * 0.395,
                  r: 4,
                  b: 0,
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            CommonText(
                title: chairsdetails[2].name,
                sizeoffont: size.height * 0.040,
                weightoffont: FontWeight.w600),
            SizedBox(
              height: size.height * 0.015,
            ),
            CommonText(
                title: "Subhead Chair Content",
                sizeoffont: size.height * 0.023,
                weightoffont: FontWeight.w300),
            SizedBox(
              height: size.height * 0.015,
            ),
            SimpleLine(size: size),
            SizedBox(
              height: size.height * 0.045,
            ),
            ColorAndSizeButtons(size: size),
            SizedBox(
              height: size.height * 0.045,
            ),
            CommonFlatButton(
                title: "Add To Cart",
                buttoncolor: primaryColor,
                textcolor: Colors.white,
                textsize: size.height * 0.025,
                weightofFont: FontWeight.w700,
                height: size.height * 0.065,
                width: size.width * 0.85,
                borderofbutton: false,
                facebook: false,
                Gmail: false,
                isSocial: false)
          ],
        ),
      )),
    );
  }
}
