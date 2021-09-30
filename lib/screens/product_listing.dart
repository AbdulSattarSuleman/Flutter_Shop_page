import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductListing extends StatelessWidget {
  List<String> productImages = [
    'assets/images/product_images/slider1.jpg',
    'assets/images/product_images/slider2.jpg',
    'assets/images/product_images/slider3.jpg',
    'assets/images/product_images/slider4.jpg',
    'assets/images/product_images/slider5.jpg',
  ];

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
          )),
        ),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isFinite ? 3 : 3),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
    );
  }
}
