import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/cache/shared_pref_helper.dart';
import 'package:mentorea_mobile_app/app/logic/language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitialState());

  static LanguageCubit get(context) => BlocProvider.of(context);

  void selectLanguage({required String language}) async {
    if (language == 'ar') {
      CacheHelper.saveData(key: 'language', value: 'ar');
      emit(LanguageArabicState());
    } else {
      CacheHelper.saveData(key: 'language', value: 'en');
      emit(LanguageEnglishState());
    }
  }
}
