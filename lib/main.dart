import 'package:flutter/material.dart';
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
          title: const Text("Plants & Plans"),
        ),
        body: const PlantList(),
      ),
    );
  }
}
