import 'package:flutter/material.dart';
import 'package:guitarnepal/models/Product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function onPress;
  const ItemCard({
    Key? key,
    required this.product,
    required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                elevation: 10.0,
                color: product.color,
                child: Stack(children: <Widget>[
                  Container(
                    width: 250,
                    height: 250,
                    child: Center(child: Image.asset(product.image)),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 200, left: 150),
                      child: Text(
                        products[0].title,
                        style: TextStyle( 
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))
                ]),
              ),
            )
          ]),
    );
  }
}
