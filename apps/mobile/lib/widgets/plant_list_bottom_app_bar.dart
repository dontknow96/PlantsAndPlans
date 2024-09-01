import 'package:flutter/material.dart';

class PlantListBottomAppBar extends StatelessWidget {
  const PlantListBottomAppBar({super.key});

  static const double toolbarHeight = 65;

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      shape: AutomaticNotchedShape(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(80)),
        ),
      ),
    );
  }
}
