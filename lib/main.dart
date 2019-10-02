// import 'dart:io';

import 'package:flutter/cupertino.dart';
// This package makes the platform services, like the clipboard and setting the device orientation, available to your app.
import 'package:flutter/services.dart';

import 'app.dart';

void main() {
  // This app is designed only to work vertically, so we limit
  // orientations to portrait up and down.
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  return runApp(DndApp());
}
