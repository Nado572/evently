import 'package:evently/auth/login/loginScreen.dart';
import 'package:evently/auth/register/registerscreen.dart';
import 'package:evently/core/sources/routes.dart';
import 'package:evently/core/sources/theme_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Evently());
}

class Evently extends StatelessWidget {
  const Evently({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesManager.login,
      onGenerateRoute: RoutesManager.getRoute,
      theme: ThemeManager.light,
      darkTheme: ThemeManager.dark,
      themeMode: ThemeMode.light,
      locale: Locale('en'),
    );
  }
}
