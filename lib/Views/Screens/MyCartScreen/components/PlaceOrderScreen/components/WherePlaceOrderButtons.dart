import 'package:flutter/material.dart';
import 'package:kliene/Views/Widgets/CommonFlatButton.dart';

class WherePlaceOrder extends StatefulWidget {
  const WherePlaceOrder({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);
  final Size size;
  final String title;

  @override
  _WherePlaceOrderState createState() => _WherePlaceOrderState();
}

class _WherePlaceOrderState extends State<WherePlaceOrder> {
  bool tapped = false;
  @override
  Widget build(BuildContext context) {
    return CommonFlatButton(
        pressed: () {
          setState(() {
            tapped = !tapped;
          });
        },
        title: widget.title,
        buttoncolor: tapped ? Color(0xFF00086D) : Colors.white,
        textcolor: tapped ? Colors.white : Colors.black,
        textsize: widget.size.height * 0.022,
        weightofFont: FontWeight.normal,
        height: widget.size.height * 0.065,
        width: widget.size.width * 0.35,
        borderofbutton: tapped ? false : true,
        facebook: false,
        Gmail: false,
        isSocial: false);
  }
}

class SimpleLine extends StatelessWidget {
  const SimpleLine({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: size.width * 0.9,
      color: Colors.grey[400],
    );
  }
}
