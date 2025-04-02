import 'package:intl/intl.dart';

//! DATE TIME EXTENSION
extension DateTimeExtensions on DateTime {
  // Check if the date is today
  bool isToday() {
    final now = DateTime.now();
    return now.year == year && now.month == month && now.day == day;
  }

  // Check if the date was yesterday
  bool isYesterday() {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.year == year &&
        yesterday.month == month &&
        yesterday.day == day;
  }

  // Check if the date is tomorrow
  bool isTomorrow() {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return tomorrow.year == year &&
        tomorrow.month == month &&
        tomorrow.day == day;
  }

  // Format the date as a string
  String format([String pattern = 'yyyy-MM-dd HH:mm:ss']) =>
      DateFormat(pattern).format(this);

  // Get the start of the day (midnight)
  DateTime get startOfDay => DateTime(year, month, day);

  // Get the end of the day (just before midnight)
  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59, 999);

  // Check if the date is in a leap year
  bool get isLeapYear {
    final year = this.year;
    if (year % 4 != 0) return false;
    if (year % 100 == 0 && year % 400 != 0) return false;
    return true;
  }

  // Add a specific number of weekdays to the date
  DateTime addWeekdays(int days) {
    var date = this;
    while (days > 0) {
      date = date.add(const Duration(days: 1));
      if (date.weekday != DateTime.saturday &&
          date.weekday != DateTime.sunday) {
        days--;
      }
    }
    return date;
  }

  // Calculate the difference in days between two dates
  int differenceInDays(DateTime other) {
    return DateTime(year, month, day)
        .difference(DateTime(other.year, other.month, other.day))
        .inDays;
  }

  // Check if the date falls on a weekend
  bool get isWeekend =>
      weekday == DateTime.saturday || weekday == DateTime.sunday;

  // Check if the date falls on a weekday
  bool get isWeekday => !isWeekend;

  // Get the next occurrence of a specific weekday
  DateTime next(int weekday) {
    assert(weekday >= 1 && weekday <= 7);
    return add(Duration(days: (weekday - this.weekday + 7) % 7));
  }

  // Get the previous occurrence of a specific weekday
  DateTime previous(int weekday) {
    assert(weekday >= 1 && weekday <= 7);
    return subtract(Duration(days: (this.weekday - weekday + 7) % 7));
  }
}
