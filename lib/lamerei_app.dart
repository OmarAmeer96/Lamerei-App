import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lamerei_app/core/routing/app_router.dart';
import 'package:lamerei_app/core/routing/routes.dart';
import 'package:lamerei_app/core/theming/colors_manager.dart';

class LamereiApp extends StatelessWidget {
  final AppRouter appRouter;
  const LamereiApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lamerei App',
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          fontFamily: 'TenorSans',
          primaryColor: ColorsManager.primaryColor,
        ),
        initialRoute: Routes.splashView,
      ),
    );
  }
}
