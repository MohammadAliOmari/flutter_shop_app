import 'package:flutter/material.dart';
import 'package:flutter_shop_app/products/model/product_model.dart';
import 'package:flutter_shop_app/products/view/widgets/product_grid_item.dart';
import 'package:flutter_shop_app/products/view_model/product_view_model.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 40),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7,
      ),
      itemCount: productData.length, // Replace with your product count
      itemBuilder: (context, index) {
        final ProductModel products = productData[index];
        return ProductGridItem(products: products);
      },
    );
  }
}
