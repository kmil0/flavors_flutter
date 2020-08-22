import 'package:flutter/material.dart';
import 'package:sprint95/app.dart';
import 'package:sprint95/app_config.dart';

void main() {
  AppConfig.instance.init(
      apiHost: "https://apihostQA.com",
      icon: "/assets/icon/qa.png",
      primaryColor: Colors.deepPurpleAccent,
      secondaryColor: Colors.white,
      debugShowCheckedModeBanner: true);

  runApp(MyApp());
}
