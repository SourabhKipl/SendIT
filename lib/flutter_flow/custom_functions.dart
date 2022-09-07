import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../../auth/auth_util.dart';

bool isUserExsist() {
  // Add your function code here!
  return false;
}

bool isSelectedValue(bool value) {
  // Add your function code here!
  return true;
}

String dateConvertString(DateTime date) {
  // Add your function code here!

  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  final String formatted = formatter.format(date);
  return formatted;
}

String convertStringFormat(
  String strDate,
  String strFormat,
) {
  // Add your function code here!
  var parsedDate = DateTime.parse(strDate);
  //final DateTime now = DateTime.now();
  final DateFormat format = DateFormat(strFormat);
  final String formatted = format.format(parsedDate);
  return formatted;
}

String orderStatusChange(String strStatus) {
  // Add your function code here!

  if (strStatus == "driver-assigned") {
    return "Driver Assigned";
  } else if (strStatus == "processing") {
    return "Processing";
  } else if (strStatus == "pending") {
    return "Pending payment";
  }
  return "";
}

bool isDriverAssigned(String strStatus) {
  // Add your function code here!
  if (strStatus == "driver-assigned") {
    return true;
  }
  return false;
}
