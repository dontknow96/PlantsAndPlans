import 'package:flutter/material.dart';
import 'package:plants_and_plans/router/router.dart';
import 'themes/global_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: GlobalThemeData.lightThemeData,
      routerConfig: router,
    );
  }
}
