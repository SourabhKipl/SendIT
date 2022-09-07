// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

final _advancedDrawerController = AdvancedDrawerController();

Future sideMenu() async {
  // Add your function code here!
  _handleMenuButtonPressed();
}

void _handleMenuButtonPressed() {
  // NOTICE: Manage Advanced Drawer state through the Controller.
  // _advancedDrawerController.value = AdvancedDrawerValue.visible();
  _advancedDrawerController.showDrawer();
}
