// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:product_catalog/constant.dart';

class ProductListing extends StatefulWidget {
  @override
  State<ProductListing> createState() => _ProductListingState();
}

class _ProductListingState extends State<ProductListing> {
  List<String> productImages = [
    'assets/images/product_images/p1.jpg',
    'assets/images/product_images/p2.jpg',
    'assets/images/product_images/p3-1.png',
    'assets/images/product_images/p4.jpg',
    'assets/images/product_images/p5.jpg',
    'assets/images/product_images/p6.jpg',
  ];

  List<String> productName = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
    'Product 5',
    'Product 6',
  ];

  List<double> productPrice = [50, 99, 110, 60, 40, 67];

  bool itemAdded = false;

  var itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
          itemCount: productImages.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              height: 500,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAlias,
                elevation: 4.0,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage(productImages[index]),
                        fit: BoxFit.cover,
                        // width: double.infinity,
                        // height: 150,
                      ),
                      Text(productName[index]),
                      Text('\$${productPrice[index]}'),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (itemAdded = false) {
                                itemAdded = true;
                                itemCount++;
                                print(itemCount);
                                print(productName[index]);
                              }
                            });
                          },
                          child: Text('Add To Cart'))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
