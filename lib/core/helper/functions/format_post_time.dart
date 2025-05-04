import 'package:mentorea_mobile_app/core/helper/functions/is_arabic.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:intl/intl.dart';

String formatPostTime(DateTime postDate) {
  final now = DateTime.now();

  final difference = now.difference(postDate);
  if (difference.inHours < 24) {
    return timeago.format(postDate, locale: isArabic() ? 'ar' : 'en');
  } else {
    final formatter =
        DateFormat('d MMMM yyyy - h:mm a', isArabic() ? 'ar' : 'en');
    return formatter.format(postDate);
  }
}
