import 'package:flutter/material.dart';
import 'package:guitarnepal/constants.dart';

import 'package:guitarnepal/models/Product.dart';
import 'package:guitarnepal/screens/Details/DetailScreen.dart';
import 'package:guitarnepal/widgets/home_widgets/ItemCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    // loadData();
  }

  // loadData() async {
  //   await Future.delayed(Duration(seconds: 2));
  //   final catalogJson =
  //       await rootBundle.loadString("assets/files/catalog.json");
  //   final decodedData = jsonDecode(catalogJson);
  //   var productsData = decodedData["products"];
  //   CatalogModel.items = List.from(productsData)
  //       .map<Item>((item) => Item.fromMap(item))
  //       .toList();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: MyTheme.creamColor,
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: kDefaultPadding),
            itemBuilder: (context, index) => ItemCard(
                product: products[index],
                onPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(product: products[index]))))));
  }
}
