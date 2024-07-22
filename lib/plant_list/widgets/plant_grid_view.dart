import 'package:flutter/material.dart';
import 'plant_grid_item.dart';

class PlantGridView extends StatelessWidget {
  const PlantGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.count (
      crossAxisCount: 2,
      padding: const EdgeInsets.all(25),
      crossAxisSpacing: 25,
      mainAxisSpacing: 25,
      children: <PlantGridItem>[
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