// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:product_catalog/screens/shop_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      home: ShopPageScreen(),
    );
  }
}
