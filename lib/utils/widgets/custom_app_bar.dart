import 'package:flutter/material.dart';
import 'package:flutter_shop_app/utils/app_colors/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.centerTitle,
    this.hasBackButton = true,
    this.actions,
  });
  final String title;
  final bool centerTitle;
  final List<Widget>? actions;
  final bool hasBackButton;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: actions,
      centerTitle: centerTitle,
      leading: hasBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,

      backgroundColor: AppColors.primary,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
