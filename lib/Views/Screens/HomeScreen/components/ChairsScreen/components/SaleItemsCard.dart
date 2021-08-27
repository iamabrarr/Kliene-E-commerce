import 'package:flutter/material.dart';
import 'package:kliene/Views/Widgets/CommonFlatButton.dart';
import 'package:kliene/models/Clothes.dart';
import '../../../../../constants.dart';

class SaleItemsCard extends StatelessWidget {
  const SaleItemsCard({
    Key? key,
    required this.size,
    required this.sales,
  }) : super(key: key);

  final Size size;
  final Clothes sales;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: size.height * 0.12,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(05)),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.01),
                    child: Row(
                      children: [
                        SizedBox(
                            width: size.width * 0.2,
                            child: Image.asset(sales.image)),
                        SizedBox(
                          width: size.width * 0.035,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.018,
                            ),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.25,
                              child: Text(
                                sales.name,
                                style: TextStyle(fontSize: size.height * 0.02),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Text(sales.sale ? "\$${sales.saleprice}" : ""),
                                SizedBox(
                                  width: size.width * 0.03,
                                ),
                                Text(
                                  "\$${sales.price}",
                                  style: TextStyle(
                                    decoration: sales.sale
                                        ? TextDecoration.lineThrough
                                        : null,
                                    fontWeight: sales.sale
                                        ? FontWeight.w300
                                        : FontWeight.normal,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        CommonFlatButton(
                            title: "See Product",
                            buttoncolor: primaryColor,
                            textcolor: Colors.white,
                            textsize: size.height * 0.016,
                            weightofFont: FontWeight.w500,
                            height: size.height * 0.05,
                            width: size.width * 0.32,
                            borderofbutton: false,
                            facebook: false,
                            Gmail: false,
                            isSocial: false)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(width: size.width * 0.02),
      ],
    );
  }
}
