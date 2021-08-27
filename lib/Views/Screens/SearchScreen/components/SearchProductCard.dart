import 'package:flutter/material.dart';
import 'package:kliene/Views/Widgets/CommonText.dart';
import 'package:kliene/models/Chairs.dart';

import '../../../constants.dart';

class SearchProdutCard extends StatefulWidget {
  const SearchProdutCard({Key? key, required this.chrs}) : super(key: key);
  final Chairs chrs;
  @override
  _SearchProdutCardState createState() => _SearchProdutCardState();
}

class _SearchProdutCardState extends State<SearchProdutCard> {
  bool liked = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.23,
          width: size.width * 0.5,
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(05),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12,
              top: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Container(
                    height: size.height * 0.15,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.chrs.image))),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  children: [
                    CommonText(
                        title: widget.chrs.name,
                        sizeoffont: 13,
                        weightoffont: FontWeight.w600),
                    Spacer(),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.grey,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
