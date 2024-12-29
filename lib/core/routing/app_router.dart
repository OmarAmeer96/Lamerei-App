import 'package:flutter/material.dart';
import 'package:lamerei_app/core/routing/routes.dart';
import 'package:lamerei_app/features/home/presentation/home_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen like this: (arguments as ClassName).
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      // case Routes.splashView:
      //   return MaterialPageRoute(
      //     builder: (_) => const SplashView(),
      //   );

      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      default:
        return null;
    }
  }
}
