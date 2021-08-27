import 'package:flutter/material.dart';

class ColorChoose extends StatefulWidget {
  const ColorChoose({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  final Size size;
  final Color color;

  @override
  _ColorChooseState createState() => _ColorChooseState();
}

class _ColorChooseState extends State<ColorChoose> {
  bool cliked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              cliked = !cliked;
            });
          },
          child: Container(
            height: widget.size.height * 0.07,
            width: widget.size.width * 0.085,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.color,
            ),
            child: cliked
                ? Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.black,
                    ),
                  )
                : SizedBox(),
          ),
        ),
        SizedBox(width: widget.size.width * 0.01)
      ],
    );
  }
}
