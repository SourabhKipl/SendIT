// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code

Future<String> dateConvert(DateTime date) async {
  // Add your function code here!

  final DateFormat formatter = DateFormat('dd-MM-yyyy');
  final String formatted = formatter.format(date);
  return formatted;
}
