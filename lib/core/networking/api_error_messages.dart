class ApiErrorMessages {
  static const Map<String, String> _errorMessages = {
    "User.InvalidCredentials": "البريد الإلكتروني أو كلمة المرور غير صحيحة.",
    "User.DisaledUser": "تم تعطيل حسابك، يرجى التواصل مع الإدارة.",
    "User.EmailNotConfirmed": "البريد الإلكتروني لم يتم تأكيده.",
    "User.LockedUser": "تم قفل حسابك، يرجى التواصل مع الإدارة.",
    "User.NotFound": "لا يوجد مستخدم بهذا المعرف.",
    "User.Role": "دور المستخدم غير صحيح.",
    "User.InvalidToken": "رمز التوثيق غير صالح.",
    "User.DuplicateEmail": "هذا البريد الإلكتروني مستخدم بالفعل.",
    "User.DuplicateUnlock": "الحساب غير مقفل بالفعل.",
    "User.InvalidCode": "رمز التحقق غير صحيح.",
    "User.DuplicatedConfirmation": "البريد الإلكتروني مؤكد بالفعل.",
  };

  static String getMessage(String code) {
    return _errorMessages[code] ?? "حدث خطأ غير متوقع، يرجى المحاولة لاحقًا.";
  }
}
