import 'package:flutter/material.dart';
import 'package:plants_and_plans_mobile/widgets/plant_list_add_button.dart';
import 'package:plants_and_plans_mobile/widgets/plant_list_app_bar.dart';
import 'package:plants_and_plans_mobile/widgets/plant_list_bottom_app_bar.dart';
import 'package:plants_and_plans_mobile/widgets/plant_list_grid_view.dart';

class PlantList extends StatelessWidget {
  const PlantList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PlantListAppBar(),
      body: PlantListGridView(),
      bottomNavigationBar: PlantListBottomAppBar(),
      floatingActionButton: PlantListAddButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
