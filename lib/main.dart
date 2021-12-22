import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_skeleton/router/router.dart';
import 'package:logging/logging.dart';

import 'app/app.dart';

void main() {
  _setupLogging();

  final _appRouter = AppRouter();

  runApp(App(appRouter: _appRouter));
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    log('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
