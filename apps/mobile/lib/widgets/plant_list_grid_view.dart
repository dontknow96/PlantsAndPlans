import 'package:flutter/material.dart';
import 'package:plants_and_plans_mobile/widgets/plant_list_grid_item.dart';

class PlantListGridView extends StatelessWidget {
  const PlantListGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(25),
      crossAxisSpacing: 25,
      mainAxisSpacing: 25,
      children: const <PlantListGridItem>[
        PlantListGridItem(),
        PlantListGridItem(),
        PlantListGridItem(),
        PlantListGridItem(),
        PlantListGridItem(),
        PlantListGridItem(),
        PlantListGridItem(),
      ],
    );
  }
}
