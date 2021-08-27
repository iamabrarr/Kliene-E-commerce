import 'package:flutter/material.dart';

class CommonFlatButton extends StatelessWidget {
  const CommonFlatButton({
    Key? key,
    required this.title,
    required this.buttoncolor,
    required this.textcolor,
    required this.textsize,
    required this.weightofFont,
    required this.height,
    required this.width,
    this.pressed,
    required this.borderofbutton,
    required this.facebook,
    required this.Gmail,
    required this.isSocial,
  }) : super(key: key);

  @override
  final String title;
  final double height;
  final double width;
  final Color buttoncolor;
  final Color textcolor;
  final double textsize;
  final FontWeight weightofFont;
  final pressed;
  final bool borderofbutton;
  final bool facebook;
  final bool Gmail;
  final bool isSocial;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        height: height,
        width: width,
        child: Row(
          mainAxisAlignment:
              isSocial ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            isSocial
                ? SizedBox(
                    width: 10,
                  )
                : SizedBox(),
            facebook ? Icon(Icons.facebook, color: Colors.grey) : SizedBox(),
            Gmail
                ? Icon(
                    Icons.mail,
                    color: Colors.grey,
                  )
                : SizedBox(),
            isSocial
                ? SizedBox(
                    width: 10,
                  )
                : SizedBox(),
            Center(
              child: Text(
                title,
                style: TextStyle(
                    color: textcolor,
                    fontSize: textsize,
                    fontWeight: weightofFont),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: borderofbutton ? Border.all(color: Colors.grey) : null,
          borderRadius: BorderRadius.all(Radius.circular(05)),
          color: buttoncolor,
        ),
      ),
    );
  }
}
