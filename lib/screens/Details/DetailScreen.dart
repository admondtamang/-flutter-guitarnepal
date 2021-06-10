// import 'package:flutter/material.dart';
// import 'package:guitarnepal/models/Product.dart';
// import 'package:flutter_svg/svg.dart';

// class DetailScreen extends StatelessWidget {
//   final Product product;
//   const DetailScreen({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//       leading: IconButton(
//         icon: SvgPicture.asset(
//           'assets/icons/back.svg',
//           color: Colors.white,
//         ),
//         onPressed: () => Navigator.pop(context),
//       ),
//     ));
//   }

// //   AppBar buildAppBar(BuildContext context) {
// //     return AppBar(
// //         leading: IconButton(
// //           icon: SvgPicture.asset(
// //             'assets/icons/back.svg',
// //             color: Colors.white,
// //           ),
// //           onPressed: () => Navigator.pop(context),
// //         ),
// //         actions: <Widget>[
// //           IconButton(
// //             onPressed: () {},
// //             icon: SvgPicture.asset('assets/icons/search.svg'),
// //           ),
// //           IconButton(
// //             onPressed: () {},
// //             icon: SvgPicture.asset('assets/icons/cart.svg'),
// //           ),
// //           SizedBox(
// //             width: kDefaultPadding / 2,
// //           )
// //         ]);
// //   }
// }

import 'package:flutter/material.dart';
import 'package:guitarnepal/models/Product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product})
      : assert(product != null),
        super(key: key);

  // const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("ehllo"));
  }
}
