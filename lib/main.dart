import 'package:flutter/material.dart';
import 'package:guitarnepal/models/Product.dart';
import 'package:guitarnepal/screens/Details/DetailScreen.dart';
// import 'package:guitarnepal/screens/Home/home.dart';
import 'package:guitarnepal/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:velocity_x/velocity_x.dart';

import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var vxNavigator = VxNavigator(routes: {
      MyRoutes.homeRoute: (_, __) => MaterialPage(child: DetailScreen(product: products[0],))
    });

    return MaterialApp.router(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routeInformationParser: VxInformationParser(),
      routerDelegate: vxNavigator,
      // initialRoute: MyRoutes.loginRoute,
      // routes: {
      //   "/": (context) => LoginPage(),
      //   MyRoutes.homeRoute: (context) => HomePage(),
      //   MyRoutes.loginRoute: (context) => LoginPage(),
      //   MyRoutes.cartRoute: (context) => CartPage(),
      // },
    );
  }
}
