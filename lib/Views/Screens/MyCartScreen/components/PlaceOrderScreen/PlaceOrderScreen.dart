import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:kliene/Controllers/CartCounter.dart';
import 'package:kliene/Views/Screens/HomeScreen/components/ChairsScreen/components/SaleItemsCard.dart';
import 'package:kliene/Views/Screens/MyCartScreen/components/OrderFailedScreen/OrderFailedScreen.dart';
import 'package:kliene/Views/Widgets/CommonFlatButton.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';
import 'package:kliene/Views/constants.dart';
import 'package:kliene/models/Clothes.dart';
import 'package:get/get.dart';

import 'components/WherePlaceOrderButtons.dart';

class PlaceOrderScreen extends StatefulWidget {
  const PlaceOrderScreen({Key? key}) : super(key: key);

  @override
  _PlaceOrderScreenState createState() => _PlaceOrderScreenState();
}

class _PlaceOrderScreenState extends State<PlaceOrderScreen> {
  @override
  Widget build(BuildContext context) {
    final countCotroller = Get.put(CartCounter());
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(children: [
                SizedBox(
                  height: size.height * 0.007,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        "assets/Icons/close.png",
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                        ))
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(child: Image.asset("assets/Images/Creditarea.png")),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SimpleLine(size: size),
                SizedBox(height: size.height * 0.01),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.location_history),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    CommonText(
                        title: "Shipping",
                        sizeoffont: size.height * 0.025,
                        weightoffont: FontWeight.w400),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                        ))
                  ],
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
              ]),
            ),
            Column(children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    WherePlaceOrder(
                      size: size,
                      title: "Home",
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    WherePlaceOrder(
                      size: size,
                      title: "Job",
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    WherePlaceOrder(
                      size: size,
                      title: "Other",
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                  ],
                ),
              ),
            ]),
            Column(children: [
              SizedBox(height: size.height * 0.04),
              SimpleLine(size: size),
              SizedBox(height: size.height * 0.04),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    ...List.generate(
                        clothesdetails.length,
                        (index) => SaleItemsCard(
                            size: size, sales: clothesdetails[index]))
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              SimpleLine(size: size),
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                ),
                child: Row(children: [
                  CommonText(
                      title: "Total :",
                      sizeoffont: size.height * 0.025,
                      weightoffont: FontWeight.bold),
                  Spacer(),
                  Obx(() {
                    return CommonText(
                        title: "\$ ${countCotroller.total}",
                        sizeoffont: size.height * 0.025,
                        weightoffont: FontWeight.w300);
                  })
                ]),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              CommonFlatButton(
                pressed: () {
                  Get.off(OrderFailed());
                },
                title: "Place Order",
                buttoncolor: primaryColor,
                textcolor: Colors.white,
                textsize: size.height * 0.025,
                weightofFont: FontWeight.w600,
                height: size.height * 0.065,
                width: size.width * 0.9,
                borderofbutton: false,
                facebook: false,
                Gmail: false,
                isSocial: false,
              )
            ])
          ],
        ),
      ),
    );
  }
}
