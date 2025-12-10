import 'package:flutter/material.dart';
import 'package:insta_buy_app/features/auth/presentation/screens/splash_screen.dart';

class AppRoutes {
  static Route<dynamic> routes(RouteSettings settings) {
    Widget widget= SizedBox();

    if(settings.name == SplashScreen.nmae){
      widget = SplashScreen();
    }

    return MaterialPageRoute(builder: (context) => widget);
  }
}
