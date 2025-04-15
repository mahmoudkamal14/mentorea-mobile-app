import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/app/logic/app_cubit.dart';
import 'package:mentorea_mobile_app/app/logic/app_state.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ChangeThemeMode extends StatelessWidget {
  const ChangeThemeMode({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        String? savedTheme = CacheHelper.getData(key: 'themeMode');

        if (savedTheme != null) {
          AppCubit.get(context).currentTheme = ThemeModeState.values.firstWhere(
            (e) => e.name == savedTheme,
            orElse: () => ThemeModeState.system,
          );
        }
        return Card(
          color: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          child: ListTile(
            leading: SvgPicture.asset(
              'assets/icons/moon-stars.svg',
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              S.current.themeMode,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            trailing: DropdownButton<ThemeModeState>(
              alignment: AlignmentDirectional.bottomEnd,
              underline: const SizedBox.shrink(),
              borderRadius: BorderRadius.circular(10),
              value: AppCubit.get(context).currentTheme,
              icon: const SizedBox.shrink(),
              focusColor: Theme.of(context).scaffoldBackgroundColor,
              dropdownColor: Theme.of(context).scaffoldBackgroundColor,
              onChanged: (ThemeModeState? newTheme) {
                if (newTheme == ThemeModeState.light) {
                  AppCubit.get(context).selectTheme(ThemeModeState.light);
                } else if (newTheme == ThemeModeState.dark) {
                  AppCubit.get(context).selectTheme(ThemeModeState.dark);
                } else {
                  AppCubit.get(context).selectTheme(ThemeModeState.system);
                }
              },
              items: [
                DropdownMenuItem(
                  value: ThemeModeState.light,
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    S.current.light,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                DropdownMenuItem(
                  value: ThemeModeState.dark,
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    S.current.dark,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                DropdownMenuItem(
                  value: ThemeModeState.system,
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    S.current.system,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
