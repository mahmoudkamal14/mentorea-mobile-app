import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/routes/app_router.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/theme/dark_mode.dart';
import 'package:mentorea_mobile_app/core/theme/light_mode.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mentorea_mobile_app/app/logic/app_cubit.dart';
import 'package:mentorea_mobile_app/app/logic/app_state.dart';

class MentoreaApp extends StatelessWidget {
  const MentoreaApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: MediaQuery.sizeOf(context),
            minTextAdapt: true,
            builder: (context, child) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                initialRoute: Routes.splashScreen,
                onGenerateRoute: appRouter.generateRoute,
                theme: lightTheme,
                darkTheme: darkTheme,
                themeMode: AppCubit.get(context).getThemeMode(),
                locale: Locale(AppCubit.get(context).getCurrentLanguage()),
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
              );
            },
          );
        },
      ),
    );
  }
}
