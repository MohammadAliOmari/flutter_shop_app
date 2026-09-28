import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_shop_app/products/model/product_model.dart';
import 'package:flutter_shop_app/utils/app_colors/app_colors.dart';
import 'package:flutter_shop_app/utils/widgets/custom_app_bar.dart';
import 'package:flutter_shop_app/utils/widgets/custom_button.dart';

class ProductDetaillsView extends StatelessWidget {
  const ProductDetaillsView({super.key, required this.products});
  final ProductModel products;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Product Details',
        centerTitle: false,
        actions: [
          Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 35),
          SizedBox(width: 15),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),

                    child: Image(
                      height: 300,
                      width: double.infinity,
                      image: NetworkImage(products.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  products.name,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '\$${products.price}',
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    products.description,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Brand',
                      style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      products.brand,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Divider(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      products.category,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Divider(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'In Stock',
                      style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      products.inStock ? 'Yes' : 'No',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: products.inStock
                            ? Colors.green[600]
                            : Colors.red,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onPressed: () {
                    log('Add to Cart');
                  },
                  text: 'Add to Cart',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
