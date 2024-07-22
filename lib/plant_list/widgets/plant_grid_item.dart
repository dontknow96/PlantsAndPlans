import 'package:flutter/material.dart';

class PlantGridItem extends StatelessWidget {
  const PlantGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(8),
      color: Colors.green,
      child: const Text("I'm a Container with Text."),
    );
  }
}