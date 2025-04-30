import 'package:mentorea_mobile_app/core/helper/functions/app_regex.dart';
import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';

String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return isArabic() == true ? 'كلمة المرور مطلوبة' : 'Password is required';
  } else if (AppRegex.hasLowerCase(value) == false) {
    return isArabic() == true
        ? 'يجب أن تحتوي على حرف صغير واحد على الأقل'
        : 'Must contain at least 1 lowercase letter';
  } else if (AppRegex.hasUpperCase(value) == false) {
    return isArabic() == true
        ? 'يجب أن تحتوي على حرف كبير واحد على الأقل'
        : 'Must contain at least 1 capital letter';
  } else if (AppRegex.hasNumber(value) == false) {
    return isArabic() == true
        ? 'يجب أن تحتوي على رقم واحد على الأقل'
        : 'Must contain at least 1 number';
  } else if (AppRegex.hasSpecialCharacter(value) == false) {
    return isArabic() == true
        ? r'يجب أن تحتوي على رمز واحد على الأقل ( $, #, @,..)'
        : r'Must contain at least 1 symbol ( $, #, @,..)';
  } else if (AppRegex.hasMinLength(value) == false) {
    return isArabic() == true
        ? 'يجب أن تتكون من 8 أحرف على الأقل'
        : 'Must be at least 8 characters';
  }
  return null;
}

String? validateName(String? value) {
  if (value == null || value.trim().isEmpty) {
    return isArabic() == true ? 'الاسم مطلوب' : 'Name is required';
  }

  if (value.trim().length < 2) {
    return isArabic() == true ? 'الاسم قصير جدًا' : 'Name is too short';
  }

  final nameRegExp = RegExp(r"^[a-zA-Z\u0621-\u064A\s]+$");
  if (!nameRegExp.hasMatch(value.trim())) {
    return isArabic() == true
        ? 'الاسم يجب أن يحتوي على حروف فقط'
        : 'Name must contain only letters';
  }

  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.trim().isEmpty) {
    return isArabic() == true ? 'البريد الإلكتروني مطلوب' : 'Email is required';
  } else if (AppRegex.isEmailValid(value) == false) {
    return isArabic() == true
        ? 'صيغة البريد الإلكتروني غير صحيحة'
        : 'Invalid email format';
  }

  return null;
}

String? validateAbout(String? value) {
  if (value == null || value.trim().isEmpty) {
    return isArabic() == true ? 'برجاء كتابة نبذة عنك' : 'About is required';
  }

  if (value.trim().length < 100) {
    return isArabic() == true
        ? 'النبذة يجب أن تكون على الأقل 100 أحرف'
        : 'About must be at least 100 characters';
  }

  if (value.trim().length > 1000) {
    return isArabic() == true
        ? 'النبذة يجب ألا تتجاوز 500 حرف'
        : 'About must not exceed 1000 characters';
  }

  return null;
}
