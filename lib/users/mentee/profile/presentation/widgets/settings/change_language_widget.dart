import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mentorea_mobile_app/app/logic/app_cubit.dart';
import 'package:mentorea_mobile_app/app/logic/app_state.dart';
import 'package:mentorea_mobile_app/core/cache/cache_helper.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';

class ChangeLanguageWidget extends StatelessWidget {
  const ChangeLanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        String? savedLanguage = CacheHelper.getData(key: 'language');

        if (savedLanguage != null) {
          AppCubit.get(context).currentLanguage =
              LanguageState.values.firstWhere(
            (e) => e.name == savedLanguage,
            orElse: () => LanguageState.arabic,
          );
        }
        return Card(
          color: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          child: ListTile(
            leading: SvgPicture.asset(
              'assets/icons/language-exchange.svg',
              color: Theme.of(context).iconTheme.color,
            ),
            title: Text(
              S.current.changeLanguage,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            trailing: DropdownButton<LanguageState>(
              alignment: AlignmentDirectional.bottomEnd,
              underline: const SizedBox.shrink(),
              borderRadius: BorderRadius.circular(10),
              value: AppCubit.get(context).currentLanguage,
              icon: const SizedBox.shrink(),
              focusColor: Theme.of(context).scaffoldBackgroundColor,
              dropdownColor: Theme.of(context).scaffoldBackgroundColor,
              onChanged: (LanguageState? language) {
                if (language == LanguageState.arabic) {
                  AppCubit.get(context).selectLanguage(LanguageState.arabic);
                } else if (language == LanguageState.english) {
                  AppCubit.get(context).selectLanguage(LanguageState.english);
                }
              },
              items: [
                DropdownMenuItem(
                  value: LanguageState.arabic,
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    S.current.arabic,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                DropdownMenuItem(
                  value: LanguageState.english,
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    S.current.english,
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
