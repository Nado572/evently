import 'package:evently/auth/login/loginScreen.dart';
import 'package:evently/auth/register/registerscreen.dart';
import 'package:flutter/cupertino.dart';

class RoutesManager {
  static const String register = '/register';
  static const String login = '/login';

  static Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.register:
        {
          return CupertinoPageRoute(builder: (context) => RegisterScreen());
        }
      case RoutesManager.login:
        {
          return CupertinoPageRoute(builder: (context) => LoginScreen());
        }
    }

  }
}