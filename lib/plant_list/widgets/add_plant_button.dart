import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AddPlantButton extends StatelessWidget {
  const AddPlantButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return  FloatingActionButton.large(
      onPressed: () {},
      shape: const CircleBorder(),
      child: Container(
        constraints: const BoxConstraints.expand(),
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          border: GradientBoxBorder(
            gradient: LinearGradient(
                colors: [
                  theme.colorScheme.surface,
                  theme.colorScheme.background,
                  theme.colorScheme.surface,
                ]
            ),
            width: 4.0,
          ),
          borderRadius: BorderRadius.circular(50)
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}