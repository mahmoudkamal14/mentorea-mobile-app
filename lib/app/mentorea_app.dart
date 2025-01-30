import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/routes/app_router.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mentorea_mobile_app/app/logic/language_cubit.dart';
import 'package:mentorea_mobile_app/app/logic/language_state.dart';

class MentoreaApp extends StatelessWidget {
  const MentoreaApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: ScreenUtilInit(
        designSize: Size(width, height),
        minTextAdapt: true,
        builder: (context, child) {
          return BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, state) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                initialRoute: Routes.splashScreen,
                onGenerateRoute: appRouter.generateRoute,
                theme: ThemeData(useMaterial3: false),
                locale: const Locale('en'),
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
