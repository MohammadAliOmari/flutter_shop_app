import 'package:flutter/material.dart';
import 'package:flutter_shop_app/login/view/forget_password_screen.dart';
import 'package:flutter_shop_app/login/view/login_screen.dart';

class AppRoutes {
  static const String login = '/ogin';
  static const String forgetPassword = '/forget_password';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPassword());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('No route defined for this path')),
          ),
        );
    }
  }
}
