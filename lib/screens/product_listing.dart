// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:product_catalog/constant.dart';

class ProductListing extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: productImages.length,
        itemBuilder: (BuildContext context, int index) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(productImages[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: Expanded(
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName[index],
                      style: kproductDetailText,
                    ),
                    Text(
                      'Price: \$${productPrice[index]}',
                      style: kproductDetailText,
                    ),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                    onPressed: () {
                      print(productName[index]);
                      print(productPrice[index]);
                      print(productImages[index]);
                    },
                    child: Text('Add To Cart'))
              ],
            ),
          ),
        ),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isFinite ? 3 : 3),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}
