import 'package:flutter/material.dart';
import 'package:plants_and_plans_mobile/plant_list/widgets/add_plant_button.dart';
import 'package:plants_and_plans_mobile/plant_list/widgets/plant_grid_view.dart';

class PlantList extends StatelessWidget {
  const PlantList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
    );
  }
}
