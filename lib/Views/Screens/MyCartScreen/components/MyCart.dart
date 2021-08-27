import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kliene/Controllers/CartCounter.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';
import 'package:kliene/models/Clothes.dart';

import '../../../constants.dart';

class MyProducts extends StatelessWidget {
  const MyProducts({
    Key? key,
    required this.size,
    required this.countCotroller,
  }) : super(key: key);

  final Size size;
  final CartCounter countCotroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.15,
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Image.asset(clothesdetails[0].image),
          SizedBox(
            width: size.width * 0.04,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.035,
              ),
              CommonText(
                  title: clothesdetails[0].name,
                  sizeoffont: size.height * 0.022,
                  weightoffont: FontWeight.bold),
              SizedBox(height: size.height * 0.02),
              CommonText(
                  title: "\$${clothesdetails[0].price}",
                  sizeoffont: size.height * 0.018,
                  weightoffont: FontWeight.w400),
              SizedBox(height: size.height * 0.03),
            ],
          ),
          Spacer(),
          Column(
            children: [
              SizedBox(
                height: size.height * 0.015,
              ),
              GestureDetector(
                onTap: () {
                  countCotroller.decrement();
                },
                child: Container(
                  height: size.height * 0.028,
                  width: size.width * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(05),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.remove,
                      size: size.height * 0.017,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              Obx(() {
                return Container(
                    height: size.height * 0.031,
                    width: size.width * 0.065,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(05)),
                    child: Center(child: Text("${countCotroller.count}")));
              }),
              SizedBox(
                height: size.height * 0.015,
              ),
              GestureDetector(
                onTap: () {
                  countCotroller.increment();
                },
                child: Container(
                  height: size.height * 0.028,
                  width: size.width * 0.06,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(05),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: size.height * 0.017,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
