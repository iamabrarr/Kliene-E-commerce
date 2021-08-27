import 'package:flutter/material.dart';

import '../constants.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    Key? key,
    required this.size,
    required this.hinttext,
    required this.checkborderRadius,
    this.color,
    required this.keyboard,
    this.validations,
  }) : super(key: key);
  final Size size;
  final String hinttext;
  final bool checkborderRadius;
  final color;
  final TextInputType keyboard;
  final validations;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(
            height: size.height * 0.075,
            width: size.width * 0.8,
            decoration: BoxDecoration(
                color: color,
                borderRadius: checkborderRadius
                    ? BorderRadius.all(Radius.circular(5))
                    : null,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey.shade400,
                  )
                ]),
            child: Padding(
              padding: EdgeInsets.only(
                  top: size.height * 0.007, left: defaultPadding),
              child: TextFormField(
                keyboardType: keyboard,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hinttext,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                validator: validations,
              ),
            )),
      ],
    );
  }
}
