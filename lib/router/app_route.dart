import 'package:flutter/material.dart';
import 'package:flutter_shop_app/login/view/forget_password_screen.dart';
import 'package:flutter_shop_app/login/view/login_screen.dart';
import 'package:flutter_shop_app/products/model/product_model.dart';
import 'package:flutter_shop_app/products/view/product_detaills_view.dart';
import 'package:flutter_shop_app/products/view/product_view.dart';

class AppRoutes {
  static const String login = '/login';
  static const String forgetPassword = '/forget_password';
  static const String productView = '/product_view';
  static const String productDetaillsView = '/product_detaills_view';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPassword());
      case AppRoutes.productView:
        return MaterialPageRoute(builder: (_) => const ProductView());
      case AppRoutes.productDetaillsView:
        final args = settings.arguments as ProductModel;
        return MaterialPageRoute(
          builder: (_) => ProductDetaillsView(products: args),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('No route defined for this path')),
          ),
        );
    }
  }
}
