import 'package:go_router/go_router.dart';
import 'package:plants_and_plans_mobile/views/plant_list.dart';

class RouterConfigMobile {
  static const home = '/';

  static List<RouteBase> routes() => [
        GoRoute(
          path: home,
          builder: (context, __) => const PlantList(),
        ),
      ];
}
