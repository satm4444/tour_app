import 'package:tour/Screens/BottomBarScreen.dart';
import 'package:tour/Screens/OrderScreen.dart';
import 'package:tour/Screens/cart_screen.dart';

import 'package:tour/Screens/product_screen.dart';
import 'package:tour/loadingscreen.dart';
import 'package:tour/login_page.dart';
import 'package:tour/provider/cart_provider.dart';
import 'package:tour/provider/deals_of_products_provider.dart';
import 'package:tour/provider/order_provider.dart';
import 'package:tour/provider/products_provider.dart';
import 'package:tour/Screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Deals(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.white),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          '/': (ctx) => LoginPage(),
          '/load': (ctx) => LoadingScreen(),
          '/bottombar': (ctx) => BottomBarScreen(),
          ProductScreen.routeName: (ctx) => ProductScreen(),
          SearchScreen.routeName: (ctx) => SearchScreen(),
          '/cartscreen': (ctx) => CartScreen(),
          "/order_screen": (ctx) => OrderScreen(),
        },
      ),
    );
  }
}
