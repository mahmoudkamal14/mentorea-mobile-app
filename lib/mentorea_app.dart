import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';

import 'core/routes/app_router.dart';

class MentoreaApp extends StatelessWidget {
  const MentoreaApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return ScreenUtilInit(
      designSize: Size(width, height),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
