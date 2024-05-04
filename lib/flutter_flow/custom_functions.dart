import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? changeMinutesToHours(double inMinutes) {
  // input in minutes and it returns in hours so if an input is 70 it returns 1 hours and 10 minutes
  final hours = inMinutes ~/ 60;
  final minutes = inMinutes % 60;
  if (hours == 0) {
    return '$minutes minutes';
  } else if (minutes == 0) {
    return '$hours hours';
  } else {
    return '$hours hours and $minutes minutes';
  }
}

double? getMinuteDifference(
  DateTime? startTime,
  DateTime? currentTime,
) {
  // get time difference between 2 date times
  if (startTime == null || currentTime == null) {
    return null;
  }
  final difference = currentTime.difference(startTime);
  return difference.inMinutes.toDouble();
}

DateTime getCurrentDate() {
  DateTime now = DateTime.now();
  DateTime currentDate = DateTime(now.year, now.month, now.day, 0, 0, 0);

  return currentDate;
}

List<DateTime>? getMonthDates(DateTime? currentDate) {
  // a function that returns all the date time from current date to last 7 days or a week and return
  List<DateTime> dates = [];
  for (int i = 0; i < 30; i++) {
    dates.add(currentDate!.subtract(Duration(days: i)));
  }
  return dates;
}

List<DateTime>? getWeekDates(DateTime? currentDate) {
  // a function that returns all the date time from current date to last 7 days or a week and return
  List<DateTime> dates = [];
  for (int i = 0; i < 7; i++) {
    dates.add(currentDate!.subtract(Duration(days: i)));
  }
  return dates;
}

List<DateTime> getListOfDates(
  DateTime startDate,
  DateTime endDate,
) {
  // get list of dates in between startDate and endDate inculding the start and end
  final List<DateTime> dates = [];
  for (var date = startDate;
      date.isBefore(endDate.add(Duration(days: 1)));
      date = date.add(Duration(days: 1))) {
    DateTime addDate = DateTime(date.year, date.month, date.day, 0, 0, 0);
    dates.add(addDate);
  }
  return dates;
}

DateTime firstDayOfTheYear() {
  // return the 1st day of the year as date time
  return DateTime(DateTime.now().year, 1, 1);
}

bool checkDate(DateTime date) {
  // check date from current date if current date is over date return true if it is below false
  final now = DateTime.now();
  return date.isBefore(now);
}

int dateDifference(
  DateTime startDate,
  DateTime endDate,
) {
  // get the date difference between end date and start date return date difference
  Duration difference = endDate.difference(startDate);
  return difference.inDays;
}

List<DateTime> getListDateTime(
  DateTime startTime,
  DateTime endTime,
) {
  // get the list of dates between startTime and endTime
  List<DateTime> list = [];
  for (var i = startTime; i.isBefore(endTime); i = i.add(Duration(days: 1))) {
    list.add(i);
  }
  return list;
}

bool checkIfDateIsInbetweenDates(
  DateTime startDate,
  DateTime endDate,
) {
  // check if current date is between startDate and end date
  final now = DateTime.now();
  DateTime currentDate = DateTime(now.year, now.month, now.day, 0, 0, 0);

  if (endDate == null) {
    return currentDate.isAfter(startDate) ||
        currentDate.isAtSameMomentAs(startDate);
  } else {
    return currentDate.isAfter(startDate) && currentDate.isBefore(endDate) ||
        currentDate.isAtSameMomentAs(startDate) ||
        currentDate.isAtSameMomentAs(endDate);
  }
}

List<DateTime> getDates(
  DateTime? startDate,
  DateTime? endDate,
) {
  final List<DateTime> dates = [];
  if (startDate != null && endDate != null) {
    for (var date = startDate;
        date.isBefore(endDate.add(Duration(days: 1)));
        date = date.add(Duration(days: 1))) {
      DateTime addDate = DateTime(date.year, date.month, date.day, 0, 0, 0);
      dates.add(addDate);
    }
  }

  return dates;
}

DateTime setDateCurrentTime(DateTime datePicked) {
  // set date picked widget state to current time in date time
  DateTime now = DateTime.now();
  datePicked = now;
  return now;
}

DateTime? startOfTheWeekDate(DateTime now) {
  // return start of the week date so if today is tuesday this function returns date of monday
  int dayOfWeek = now.weekday;
  DateTime startOfWeek = now.subtract(Duration(days: dayOfWeek - 1));
  return startOfWeek;
}

bool checkIfDateIsBetween2Dates(
  DateTime startDate,
  DateTime endDate,
  DateTime date,
) {
  // I want to check if a date is between startDate or endDate and returns a boolean value
  return date.isAfter(startDate) && date.isBefore(endDate) ||
      date.isAtSameMomentAs(startDate) ||
      date.isAtSameMomentAs(endDate);
}

List<int>? getActiveAndOvertimeMinutes(
  DateTime startTime,
  DateTime endTime,
) {
  // Define the start and end of normal working hour
  DateTime normalStart =
      DateTime(startTime.year, startTime.month, startTime.day, 6, 30);
  DateTime normalEnd =
      DateTime(endTime.year, endTime.month, endTime.day, 15, 0);

  // Define the end of overtime hours
  DateTime overtimeEnd =
      DateTime(endTime.year, endTime.month, endTime.day, 19, 0);

  // Initialize active and overtime minutes
  int activeMinutes = 0;
  int overtimeMinutes = 0;

  // Calculate active minutes within the normal working hours
  if (startTime.isBefore(normalEnd) && endTime.isAfter(normalStart)) {
    // Calculate the actual start and end of work within the normal hours
    DateTime actualStart =
        startTime.isBefore(normalStart) ? normalStart : startTime;
    DateTime actualEnd = endTime.isAfter(normalEnd) ? normalEnd : endTime;

    // Compute the active minutes
    Duration activeDuration = actualEnd.difference(actualStart);
    activeMinutes = activeDuration.inMinutes;
  }

  // Calculate overtime after normal hours but only until 7:00 PM
  if (endTime.isAfter(normalEnd)) {
    DateTime overtimeStart =
        (startTime.isAfter(normalEnd) ? startTime : normalEnd);
    DateTime effectiveOvertimeEnd =
        (endTime.isBefore(overtimeEnd) ? endTime : overtimeEnd);

    if (overtimeStart.isBefore(effectiveOvertimeEnd)) {
      Duration overtimeDuration =
          effectiveOvertimeEnd.difference(overtimeStart);
      overtimeMinutes = overtimeDuration.inMinutes;
    }
  }

  return [activeMinutes, overtimeMinutes];
}

String checkStartingTimewithCurrentTime(DateTime startTime) {
  final now = DateTime.now();
  final startOfDay = DateTime(now.year, now.month, now.day, 7, 10);
  if (startTime.isBefore(startOfDay)) {
    return 'Signed in early';
  } else if (startTime.isAfter(startOfDay)) {
    return 'Signed In late';
  } else {
    return '';
  }
}

DateTime? endOfDayDate() {
  // return a a date time with today at 9:40 am
  return DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day, 9, 49);
}
