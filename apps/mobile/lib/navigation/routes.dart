import 'package:go_router/go_router.dart';
import 'package:plants_and_plans_mobile/views/plant_create_edit.dart';
import 'package:plants_and_plans_mobile/views/plant_list.dart';

class RouterConfigMobile {
  static const home = '/';
  static const plantCreateEdit = '/plantCreateEdit';

  static List<RouteBase> routes() => [
        GoRoute(
          path: home,
          builder: (context, __) => const PlantList(),
        ),
        GoRoute(
          path: plantCreateEdit,
          builder: (context, state) => const PlantCreateEdit(),
        ),
      ];
}
