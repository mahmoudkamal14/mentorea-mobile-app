import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/app/logic/bloc_observer.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/core/di/dependency_injection.dart';
import 'package:mentorea_mobile_app/core/routes/app_router.dart';
import 'package:mentorea_mobile_app/app/mentorea_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  Bloc.observer = AppBlocObserver();
  await CacheHelper.init();
  await ScreenUtil.ensureScreenSize();
  runApp(MentoreaApp(appRouter: AppRouter()));
}
