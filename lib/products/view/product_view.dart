import 'package:flutter/material.dart';

import 'package:flutter_shop_app/products/view/widgets/product_grid_view.dart';
import 'package:flutter_shop_app/products/view/widgets/product_list_view.dart';

import 'package:flutter_shop_app/utils/app_colors.dart/app_colors.dart';
import 'package:flutter_shop_app/utils/widgets/custom_app_bar.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

bool isGridView = true;
void toggleView() {
  isGridView = !isGridView;
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Products',
        centerTitle: false,
        hasBackButton: false,
        actions: [
          const Icon(Icons.search, color: Colors.white, size: 30),
          const SizedBox(width: 20),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isGridView ? Colors.white60 : Colors.white30,
              borderRadius: BorderRadius.circular(8),
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  toggleView();
                });
              },
              child: isGridView
                  ? const Icon(
                      Icons.grid_view_outlined,
                      color: AppColors.primary,
                      size: 30,
                    )
                  : const Icon(Icons.list, color: Colors.white, size: 30),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: isGridView
                  ? const ProductGridView()
                  : const ProductListView(),
            ),
          ],
        ),
      ),
    );
  }
}
