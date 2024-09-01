import 'package:flutter/material.dart';
import 'package:plants_and_plans_mobile/widgets/plantListAddButton.dart';
import 'package:plants_and_plans_mobile/widgets/plantListAppBar.dart';
import 'package:plants_and_plans_mobile/widgets/plantListBottomAppBar.dart';
import 'package:plants_and_plans_mobile/widgets/plantListGridView.dart';

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