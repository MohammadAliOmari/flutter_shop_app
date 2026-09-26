import 'package:flutter/material.dart';
import 'package:flutter_shop_app/login/view/login_screen.dart';

class AppRoutes {
  static const String login = '/ogin';

}
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

     

      default:
        return 
        MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No route defined for this path'),
            ),
          ),
        );
        
    }
  }


}


