import 'package:flutter/material.dart';
import 'package:kliene/Views/Screens/HomeScreen/components/ChairsScreen/ChairsScreen.dart';
import 'package:kliene/Views/Screens/HomeScreen/components/CupBoardScreen/CupBoardScreen.dart';
import 'package:kliene/Views/Screens/HomeScreen/components/FurnitureScreen/Furnitures.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedindex = 0;
  List<Widget> pages = [
    ChairsScreen(),
    CupBoards(),
    Furnitures(),
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [categories(), Expanded(child: pages[selectedindex])],
    );
  }

  Widget categories() {
    return Row(
      children: [
        catogoriess("Chairs", 0),
        catogoriess("CupBoards", 1),
        catogoriess("Furniture", 2),
      ],
    );
  }

  Widget catogoriess(String text, int index) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selectedindex = index;
            });
          },
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(
                    color: index == selectedindex ? Colors.black : Colors.grey),
              ),
              SizedBox(
                height: size.height * 0.009,
              ),
              index == selectedindex
                  ? Container(
                      height: 2,
                      width: size.width * 0.1,
                      color: Colors.black,
                    )
                  : SizedBox(),
              SizedBox(
                height: size.height * 0.02,
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width * 0.05,
        )
      ],
    );
  }
}
