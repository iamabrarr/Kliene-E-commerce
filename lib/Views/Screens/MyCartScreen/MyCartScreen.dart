import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kliene/Controllers/CartCounter.dart';
import 'package:kliene/Views/Widgets/CommonFlatButton.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';
import 'package:kliene/Views/constants.dart';
import 'components/AddAnewCardScreen/AddAnewCard.dart';
import 'components/MyCart.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  // List<Widget> cartWidget = [];
  @override
  Widget build(BuildContext context) {
    final countCotroller = Get.put(CartCounter());
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    "assets/Icons/close.png",
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
                CommonText(
                    title: "My Cart",
                    sizeoffont: size.height * 0.035,
                    weightoffont: FontWeight.w600)
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            MyProducts(size: size, countCotroller: countCotroller),
            // ListView.builder(
            //     itemCount: ,
            //     itemBuilder: (BuildContext context, int index) {
            //       return items[index];
            //     }),
            Spacer(),
            Container(
              height: size.height * 0.07,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: defaultPadding),
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
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            CommonFlatButton(
              title: "Checkout",
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
              pressed: () {
                Get.to(AddAnewCard());
              },
            )
          ],
        ),
      ),
    ));
  }
}
