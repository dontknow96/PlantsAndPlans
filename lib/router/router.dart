import 'package:go_router/go_router.dart';

import '../plantList/plantList.dart';
import '../plantCreateEdit/plantCreateEdit.dart';

final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const PlantList()
      ),
      GoRoute(
        path: '/plantCreateEdit',
        builder: (context, state) => const PlantCreateEdit(),
      ),
    ]
);