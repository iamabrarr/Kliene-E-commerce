import 'package:flutter/material.dart';

import '../../../constants.dart';

class UpperSearchFieldWithCancel extends StatelessWidget {
  const UpperSearchFieldWithCancel({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.height * 0.05,
          width: size.width * 0.70,
          decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(05))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/Icons/search.png",
                      )),
                  border: InputBorder.none,
                  hintText: "Search Now",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.grey[500])),
            ),
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Cancel",
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 18, color: Colors.grey),
          ),
        )
      ],
    );
  }
}
