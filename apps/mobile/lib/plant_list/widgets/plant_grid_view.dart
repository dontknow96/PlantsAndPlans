import 'package:flutter/material.dart';
import 'package:plants_and_plans_mobile/plant_list/widgets/plant_grid_item.dart';

class PlantGridView extends StatelessWidget {
  const PlantGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(25),
      crossAxisSpacing: 25,
      mainAxisSpacing: 25,
      children: const <PlantGridItem>[
        PlantGridItem(),
        PlantGridItem(),
        PlantGridItem(),
        PlantGridItem(),
        PlantGridItem(),
        PlantGridItem(),
        PlantGridItem(),
      ],
    );
  }
}
