import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lamerei_app/core/di/dependency_injection.dart';
import 'package:lamerei_app/core/routing/routes.dart';
import 'package:lamerei_app/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:lamerei_app/features/home/presentation/home_view.dart';
import 'package:lamerei_app/features/splash/splash_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen like this: (arguments as ClassName).
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );

      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const HomeView(),
          ),
        );
      default:
        return null;
    }
  }
}
