// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future popRootVC(BuildContext context, int index) async {
  // Add your function code here!

  // Navigator.of(context).popUntil((route) => route.isFirst);
  //Navigator.popUntil(context, ModalRoute.withName('/HomeVC'));

  var count = 0;
  Navigator.popUntil(context, (route) {
    return count++ == index;
  });
}
