import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'app/app.dart';

void main() {
  _setupLogging();
  runApp(const App());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    log('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
