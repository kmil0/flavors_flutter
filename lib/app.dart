import 'package:flutter/material.dart';
import 'app_config.dart';
import 'home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: AppConfig.instance.apiHost,
      // debugShowCheckedModeBanner: config.debugShowCheckedModeBanner,
      theme: new ThemeData(primarySwatch: Colors.indigo),
      home: new HomePage(),
    );
  }
}
