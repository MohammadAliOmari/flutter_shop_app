import 'package:flutter/material.dart';
import 'package:flutter_shop_app/products/model/product_model.dart';
import 'package:flutter_shop_app/products/view/widgets/product_list_item.dart';
import 'package:flutter_shop_app/products/view_model/product_view_model.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productData.length,
      itemBuilder: (context, index) {
        final ProductModel products = productData[index];
        return ProductListItem(products: products);
      },
    );
  }
}
