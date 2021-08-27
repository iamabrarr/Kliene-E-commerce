import 'package:flutter/material.dart';
import 'package:kliene/Views/Screens/HomeScreen/components/CategoriesList.dart';
import 'components/ChairsScreen/ChairsScreen.dart';
import 'components/UpperSearchFieldSection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.035),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    UpperSearchFieldSection(size: size),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      height: size.height,
                      width: size.width,
                      child: Expanded(
                        child: SizedBox(child: Categories()),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
