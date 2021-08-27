import 'package:flutter/material.dart';
import 'package:kliene/models/Clothes.dart';

import '../../../../../constants.dart';

class ClothesCard extends StatefulWidget {
  const ClothesCard({
    Key? key,
    required this.size,
    required this.cloth,
  }) : super(key: key);

  final Size size;
  final Clothes cloth;

  @override
  _ClothesCardState createState() => _ClothesCardState();
}

class _ClothesCardState extends State<ClothesCard> {
  List<Widget> cartWidget() => [];
  bool tapiconchange = true;
  var index;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: widget.size.height * 0.20,
          width: widget.size.width * 0.80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(05),
            color: secondaryColor,
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      height: size.height * 0.3,
                      width: size.width * 0.42,
                      child: Image.asset(
                        widget.cloth.image,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.032,
                      ),
                      Container(
                        height: size.height * 0.085,
                        width: size.width * 0.3,
                        child: Text(
                          widget.cloth.name,
                          style: TextStyle(
                              fontSize: size.height * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        '\$${widget.cloth.price}',
                        style: TextStyle(
                            fontSize: size.height * 0.018,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        tapiconchange = !tapiconchange;
                      });
                    },
                    child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.115,
                        decoration: BoxDecoration(
                            color: Color(0xFFFF9999),
                            borderRadius: BorderRadius.circular(05)),
                        child: Icon(
                          tapiconchange
                              ? Icons.favorite_outline
                              : Icons.favorite,
                          color: tapiconchange ? Colors.white : Colors.red,
                        )),
                  )),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // cartWidget().add(myCart());
                      });
                    },
                    child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(05))),
                      child: Center(
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                              fontSize: size.height * 0.017,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
        SizedBox(
          width: size.width * 0.05,
        )
      ],
    );
  }
}
