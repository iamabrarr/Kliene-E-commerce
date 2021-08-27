import 'package:flutter/material.dart';
import 'package:kliene/Views/Screens/SearchScreen/components/SearchProductCard.dart';
import 'package:kliene/models/Chairs.dart';
import '../../constants.dart';
import 'components/MostlySearches.dart';
import 'components/UpperSearchFieldWithCancel.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool liked = true;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UpperSearchFieldWithCancel(size: size),
              SizedBox(
                height: size.height * 0.025,
              ),
              MostlySearches(
                size: size,
                title: "Premium Scotch",
                pressed: () {},
              ),
              MostlySearches(
                size: size,
                title: "Garbet",
                pressed: () {},
              ),
              MostlySearches(
                size: size,
                title: "Chair",
                pressed: () {},
              ),
              MostlySearches(
                size: size,
                title: "Ikea",
                pressed: () {},
              ),
              MostlySearches(
                size: size,
                title: "Ikea Scotch",
                pressed: () {},
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Text(
                "Category",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              GridView.builder(
                  itemCount: chairsdetails.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.83,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return SearchProdutCard(
                      chrs: chairsdetails[index],
                    );
                  })
            ],
          ),
        ),
      ),
    ));
  }
}
