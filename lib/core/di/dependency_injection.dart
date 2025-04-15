import 'package:get_it/get_it.dart';
import 'package:mentorea_mobile_app/core/shared/authentication/data/services/auth_dependency.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  await authDependency();
}
