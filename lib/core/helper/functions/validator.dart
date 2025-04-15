String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'كلمة المرور مطلوبة';
  } else if (value.length < 8) {
    return 'يجب أن تكون كلمة المرور 8 أحرف أو أكثر';
  }
  return null;
}
