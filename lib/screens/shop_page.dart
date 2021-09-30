// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:product_catalog/constant.dart';
import 'package:product_catalog/screens/product_listing.dart';
import 'package:product_catalog/screens/shop_page_slider.dart';

class ShopPageScreen extends StatelessWidget {
  const ShopPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Bagzz',
          style: kTextBlackColor,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/abdul.jpg'),
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          ShopPageSlider(),
          SizedBox(
            height: 20,
          ),
          ProductListing(),
        ],
      ),
    );
  }
}
