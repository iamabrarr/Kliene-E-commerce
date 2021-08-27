import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';
import 'package:kliene/models/Chairs.dart';
import '../../../../../constants.dart';
import 'ChairsDetailsScreen/ChairsDetailsScreen.dart';

class ChairsCard extends StatefulWidget {
  const ChairsCard({
    Key? key,
    required this.size,
    required this.sofas,
    required this.index,
  }) : super(key: key);

  final Size size;
  final Chairs sofas;
  final int index;

  @override
  _ChairsCardState createState() => _ChairsCardState();
}

class _ChairsCardState extends State<ChairsCard> {
  bool liked = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(DetailsChairsScreen(
                  showchair: widget.sofas.image,
                ));
              },
              child: Container(
                height: widget.size.height * 0.30,
                width: widget.size.width * 0.5,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(05),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.023,
                    top: size.height * 0.023,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: size.width * 0.023),
                        child: Container(
                          height: widget.size.height * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(widget.sofas.image))),
                        ),
                      ),
                      SizedBox(
                        height: widget.size.height * 0.02,
                      ),
                      Row(
                        children: [
                          CommonText(
                              title: widget.sofas.name,
                              sizeoffont: size.height * 0.02,
                              weightoffont: FontWeight.w600),
                          Spacer(),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  liked = !liked;
                                });
                              },
                              child: liked
                                  ? Icon(
                                      Icons.favorite_outline,
                                      color: Colors.grey,
                                      size: size.height * 0.025,
                                    )
                                  : Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: size.height * 0.025,
                                    )),
                          SizedBox(width: size.width * 0.03),
                        ],
                      ),
                      CommonText(
                          title: "\$${widget.sofas.price}",
                          sizeoffont: size.height * 0.0185,
                          weightoffont: FontWeight.w300)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: widget.size.height * 0.03,
            )
          ],
        ),
        SizedBox(
          width: size.width * 0.04,
        )
      ],
    );
  }
}
