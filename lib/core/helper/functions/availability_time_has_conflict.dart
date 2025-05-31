import 'package:intl/intl.dart';
import 'package:mentorea_mobile_app/users/mentor/schedule/data/models/mentor_availability_response_model.dart';

bool isValidSlot({
  required String newDate, // "15/05/2025"
  required String newStartTime, // "14:30"
  required String newEndTime, // "15:30"
  required List<MentorAvailabilityResponseModel> existingSlots,
}) {
  final dateFormat = DateFormat("dd/MM/yyyy");
  final timeFormat = DateFormat("HH:mm");
  final now = DateTime.now();

  final newDateParsed = dateFormat.parse(newDate);
  final newStart = DateTime(
    newDateParsed.year,
    newDateParsed.month,
    newDateParsed.day,
    timeFormat.parse(newStartTime).hour,
    timeFormat.parse(newStartTime).minute,
  );
  final newEnd = DateTime(
    newDateParsed.year,
    newDateParsed.month,
    newDateParsed.day,
    timeFormat.parse(newEndTime).hour,
    timeFormat.parse(newEndTime).minute,
  );

  // ❌ لو البداية أو النهاية عدوا بالفعل
  if (newEnd.isBefore(now) || newStart.isBefore(now)) {
    return false;
  }

  // 🔁 التأكد من عدم التعارض
  for (var slot in existingSlots) {
    if (slot.date != newDate) continue;

    final existingStart = DateTime(
      newDateParsed.year,
      newDateParsed.month,
      newDateParsed.day,
      timeFormat.parse(slot.startTime).hour,
      timeFormat.parse(slot.startTime).minute,
    );
    final existingEnd = DateTime(
      newDateParsed.year,
      newDateParsed.month,
      newDateParsed.day,
      timeFormat.parse(slot.endTime).hour,
      timeFormat.parse(slot.endTime).minute,
    );

    if (newStart.isBefore(existingEnd) && newEnd.isAfter(existingStart)) {
      return false; // ❌ في تعارض
    }
  }

  return true; // ✅ صالح للإضافة
}

bool isInThePast(String date, String startTime) {
  final dateFormat = DateFormat("dd/MM/yyyy");
  final timeFormat = DateFormat("HH:mm");

  final now = DateTime.now();

  final parsedDate = dateFormat.parse(date);
  final parsedTime = timeFormat.parse(startTime);

  final combinedDateTime = DateTime(
    parsedDate.year,
    parsedDate.month,
    parsedDate.day,
    parsedTime.hour,
    parsedTime.minute,
  );

  return combinedDateTime.isBefore(now); // true = الوقت عدى
}
