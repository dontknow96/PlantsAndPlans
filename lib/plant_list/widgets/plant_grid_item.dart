import 'package:flutter/material.dart';

class PlantGridItem extends StatelessWidget {
  PlantGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final plantPicture = Container(
      height: 140,
      width: 140,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Icon(
          Icons.image,
          color: theme.colorScheme.onPrimary,
          size: 30,
      ),
    );

    final plantName = Container(
      height: 50,
      width: 150,
      padding: const EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color:  theme.colorScheme.onBackground.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(2, 2),
          ),
        ]
      ),
      child: const Align(
          alignment: Alignment.center,
          child: Text(
            "Plant Name",
            textAlign: TextAlign.left,
            textScaler: TextScaler.linear(1.2),
          )
      ),
    );

    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        plantPicture,
        plantName,
      ],
    );
  }
}