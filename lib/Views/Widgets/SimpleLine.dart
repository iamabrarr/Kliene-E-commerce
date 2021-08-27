import 'package:flutter/material.dart';

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
