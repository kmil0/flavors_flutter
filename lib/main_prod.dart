import 'package:flutter/material.dart';
import 'package:sprint95/app.dart';
import 'package:sprint95/app_config.dart';

void main() {
  AppConfig.instance.init(
      apiHost: "https://apihostPDN.com",
      icon: "/assets/icon/pdn.png",
      primaryColor: Colors.blueAccent,
      secondaryColor: Colors.white,
      debugShowCheckedModeBanner: false);

  runApp(MyApp());
}
