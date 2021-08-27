import 'package:flutter/material.dart';
import 'package:kliene/models/Chairs.dart';
import 'package:kliene/models/Clothes.dart';
import 'components/ChairsCard.dart';
import 'components/ClothesCard.dart';
import 'components/SaleItemsCard.dart';

class ChairsScreen extends StatefulWidget {
  const ChairsScreen({Key? key}) : super(key: key);

  @override
  _ChairsScreenState createState() => _ChairsScreenState();
}

class _ChairsScreenState extends State<ChairsScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                    clothesdetails.length,
                    (index) =>
                        ClothesCard(size: size, cloth: clothesdetails[index])),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Center(
              child: Column(
            children: [
              Text("11:08:27"),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                "Best Deals",
                style: TextStyle(
                    fontSize: size.height * 0.035, fontWeight: FontWeight.w700),
              ),
            ],
          )),
          SizedBox(
            height: size.height * 0.03,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                      clothesdetails.length,
                      (index) => SaleItemsCard(
                          size: size, sales: clothesdetails[index])),
                ],
              )),
          SizedBox(
            height: size.height * 0.03,
          ),
          Text(
            "Best Products",
            style: TextStyle(
                fontSize: size.height * 0.037, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                    chairsdetails.length,
                    (index) => ChairsCard(
                          size: size,
                          index: index,
                          sofas: chairsdetails[index],
                        ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
