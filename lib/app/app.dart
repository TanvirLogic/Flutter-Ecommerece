import 'package:flutter/material.dart';
import 'package:insta_buy_app/app/app_routes.dart';
import 'package:insta_buy_app/app/app_theme.dart';
import 'package:insta_buy_app/features/auth/presentation/screens/splash_screen.dart';

class InstaBuyApp extends StatefulWidget {
  const InstaBuyApp({super.key});

  @override
  State<InstaBuyApp> createState() => _InstaBuyAppState();
}

class _InstaBuyAppState extends State<InstaBuyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.nmae,
      onGenerateRoute: AppRoutes.routes,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: .light,
    );
  }
}
