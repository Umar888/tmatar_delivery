extension DateOnly on DateTime {
  DateTime get dateOnly => DateTime(year, month, day);

  static DateTime get today => DateTime.now().dateOnly;
}
