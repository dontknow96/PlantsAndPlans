import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:plants_and_plans_mobile/themes/global_theme_data.dart';
import 'package:plants_and_plans_mobile/widgets/add_plant_button.dart';
import 'package:plants_and_plans_mobile/widgets/plant_grid_view.dart';

class PlantList extends StatelessWidget {
  const PlantList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        leading: const Icon(Icons.image),
        title: const Text('Plants & Plans'),
        shape: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [
              GlobalThemeData.lightThemeData.colorScheme.surface,
              GlobalThemeData.lightThemeData.colorScheme.background,
              GlobalThemeData.lightThemeData.colorScheme.surface,
            ],
          ),
          width: 4,
        ),
      ),
      body: const Scaffold(
        body: PlantGridView(),
        bottomNavigationBar: BottomAppBar(
          shape: AutomaticNotchedShape(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(80)),
            ),
          ),
        ),
        floatingActionButton: AddPlantButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
