import 'package:flutter/material.dart';
import 'package:plants_and_plans_mobile/navigation/router.dart';
import 'package:plants_and_plans_mobile/themes/global_theme_data.dart';

class PlantsAndPlansMobileApp extends StatelessWidget {
  const PlantsAndPlansMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterCreation.createRouter(),
      title: 'Flutter Demo',
      theme: GlobalThemeData.lightThemeData,
    );
    // return MultiBlocProvider(
    //   providers: const [],
    //   child: MaterialApp.router(
    //     routerConfig: RouterCreation.createRouter(),
    //     title: 'Flutter Demo',
    //     theme: GlobalThemeData.lightThemeData,
    //   ),
    // );
  }
}
