import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PlantListAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PlantListAppBar({super.key});

  static const double toolbarHeight = 65.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      toolbarHeight: toolbarHeight,
      leading: const Icon(Icons.image),
      title: const Text("Plants & Plans"),
      shape: GradientBoxBorder(
        gradient: LinearGradient(
            colors: [
              theme.colorScheme.surface,
              theme.colorScheme.background,
              theme.colorScheme.surface,
            ]
        ),
        width: 4.0,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(toolbarHeight);
}