import 'package:flutter/material.dart';

class MostlySearches extends StatelessWidget {
  const MostlySearches({
    Key? key,
    required this.size,
    required this.title,
    this.pressed,
  }) : super(key: key);

  final Size size;
  final String title;
  final pressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
            ),
            Spacer(),
            IconButton(
                onPressed: pressed,
                icon: Image.asset(
                  "assets/Icons/close.png",
                  color: Colors.grey[400],
                ))
          ],
        ),
        Container(
          height: 1.5,
          width: size.width * 0.87,
          color: Colors.grey[200],
        )
      ],
    );
  }
}
