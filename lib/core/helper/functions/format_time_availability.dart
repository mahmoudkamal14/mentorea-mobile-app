import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:intl/intl.dart';

String formatTimeAvailability(DateTime time) {
  final formatter = DateFormat('h:mm a', isArabic() ? 'ar' : 'en');
  return formatter.format(time);
}
