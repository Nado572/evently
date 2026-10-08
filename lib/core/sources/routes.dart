import 'package:evently/auth/login/loginScreen.dart';
import 'package:evently/auth/register/registerscreen.dart';
import 'package:evently/main_lay_out/home/home.dart';
import 'package:evently/main_lay_out/mainLayOut.dart';
import 'package:flutter/cupertino.dart';

class RoutesManager {
  static const String register = '/register';
  static const String login = '/login';
  static const String mainlayout='/mainLayOut';
  static const String home='/Home';


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
      case RoutesManager.mainlayout:{
        return CupertinoPageRoute(builder: (context)=> MainLayOut());

      }
      case RoutesManager.home:{
        return CupertinoPageRoute(builder: (context)=> Home());

      }
    }

  }
}