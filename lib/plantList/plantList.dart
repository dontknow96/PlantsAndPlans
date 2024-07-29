import 'package:flutter/material.dart';

import 'widgets/plantListAppBar.dart';
import 'widgets/plantListGridView.dart';
import 'widgets/plantListAddButton.dart';
import 'widgets/plantListBottomAppBar.dart';

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