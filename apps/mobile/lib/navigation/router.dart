import 'package:go_router/go_router.dart';
import 'package:plants_and_plans_mobile/navigation/routes.dart';

extension RouterCreation on RouterConfigMobile {
  static GoRouter createRouter() => GoRouter(
        routes: RouterConfigMobile.routes(),
        // initialLocation: login,
        // redirect: (context, state) async {
        //   final userBloc = context.read<UserBloc>();
        //
        //   userBloc.add(const UserBlocEvent.refresh());
        //
        //   if (!await GetIt.I.get<UserRepository>().isLoggedIn()) {
        //     if (!(state.topRoute?.path == login ||
        //         state.topRoute?.path == home ||
        //         state.topRoute?.path == register)) {
        //       return login;
        //     }
        //   } else {
        //     if (state.topRoute?.path == login ||
        //         state.topRoute?.path == home ||
        //         state.topRoute?.path == register) {
        //       return dashboard;
        //     }
        //   }
        //
        //   return null;
        // },
      );
}
