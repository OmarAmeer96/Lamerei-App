import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lamerei_app/core/di/dependency_injection.dart';
import 'package:lamerei_app/core/routing/app_router.dart';
import 'package:lamerei_app/core/routing/routes.dart';
import 'package:lamerei_app/core/theming/colors_manager.dart';
import 'package:lamerei_app/features/home/cubits/home_cubit/home_cubit.dart';

class LamereiApp extends StatelessWidget {
  final AppRouter appRouter;
  const LamereiApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => getIt<HomeCubit>(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Kouider App',
          onGenerateRoute: appRouter.generateRoute,
          theme: ThemeData(
            primaryColor: ColorsManager.primaryColor,
            scaffoldBackgroundColor: ColorsManager.scaffoldBackgroundColor,
          ),
          initialRoute: Routes.splashView,
        ),
      ),
    );
  }
}
