import 'app_config.dart';
import 'app.dart';

import 'package:flutter/material.dart';

void main() {
  var configuredApp = new AppConfig(
    appName: 'Build flavors',
    flavorName: 'production',
    apiBaseUrl: 'https://api.example.com/',
    debugShowCheckedModeBanner: false,
    child: new MyApp(),
  );
//flutter run  -t lib/main_prod.dart
  runApp(configuredApp);
//flutter build apk -t lib/main_prod.dart
}