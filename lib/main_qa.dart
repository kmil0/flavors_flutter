import 'app_config.dart';
import 'app.dart';

import 'package:flutter/material.dart';

void main() {
  var configuredApp = new AppConfig(
    appName: 'Build flavors QA',
    flavorName: 'QA',
    apiBaseUrl: 'https://qa-api.example.com/',
    debugShowCheckedModeBanner: true,
    child: new MyApp(),
  );
//flutter run  -t lib/main_qa.dart
  runApp(configuredApp);
//flutter build apk -t lib/main_qa.dart
}