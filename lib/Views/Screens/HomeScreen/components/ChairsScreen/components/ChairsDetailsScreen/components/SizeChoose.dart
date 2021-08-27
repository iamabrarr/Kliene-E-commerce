import 'package:flutter/material.dart';

class SizeChoose extends StatefulWidget {
  const SizeChoose({
    Key? key,
    required this.size,
    required this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  _SizeChooseState createState() => _SizeChooseState();
}

class _SizeChooseState extends State<SizeChoose> {
  bool cliked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
                  border: cliked
                      ? Border.all(
                          color: Colors.black,
                          width: 2,
                        )
                      : null,
                  shape: BoxShape.circle,
                  color: Colors.grey[350],
                ),
                child: Center(
                    child: Text(
                  widget.title,
                  style: TextStyle(
                      color: cliked ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w700),
                )),
              ),
            ),
            SizedBox(width: widget.size.width * 0.01)
          ],
        ),
      ],
    );
  }
}
