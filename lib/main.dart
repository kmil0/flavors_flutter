import 'package:flutter/material.dart';
import 'package:sprint95/app.dart';
import 'package:sprint95/app_config.dart';

void main() {
  AppConfig.instance.init(
      apiHost: "https://apihostDEV.com",
      icon: "/assets/icon/dev.png",
      primaryColor: Colors.redAccent,
      secondaryColor: Colors.white);

  runApp(MyApp());
}
