import 'package:flutter/material.dart';
import 'widgets/add_plant_button.dart';

class PlantList extends StatelessWidget {
  const PlantList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomAppBar(
        shape: const AutomaticNotchedShape(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(80))
          ),
        ),
        child: Container(height: 50.0),
      ),
      floatingActionButton: const AddPlantButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}