import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({
    Key? key,
    required this.title,
    required this.sizeoffont,
    required this.weightoffont,
  }) : super(key: key);
  @override
  final String title;
  final double sizeoffont;
  final FontWeight weightoffont;
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: sizeoffont, fontWeight: weightoffont),
    );
  }
}
