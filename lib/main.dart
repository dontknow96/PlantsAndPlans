import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'plant_list/plant_list.dart';
import 'themes/global_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: GlobalThemeData.lightThemeData,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65.0,
          leading: const Icon(Icons.image),
          title: const Text("Plants & Plans"),
          shape: GradientBoxBorder(
            gradient: LinearGradient(
                colors: [
                  GlobalThemeData.lightThemeData.colorScheme.surface,
                  GlobalThemeData.lightThemeData.colorScheme.background,
                  GlobalThemeData.lightThemeData.colorScheme.surface,
                ]
            ),
            width: 4.0,
          ),
        ),
        body: const PlantList(),
      ),
    );
  }
}
