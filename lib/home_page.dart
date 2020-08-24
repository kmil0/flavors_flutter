import 'package:flutter/material.dart';
import 'package:sprint95/api/account_api.dart';

import 'app_config.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final environmentConfiguration = EnvironmentConfiguration();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConfig.instance.apiHost),
        backgroundColor: AppConfig.instance.primaryColor,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.yellow,
          ),
          if (environmentConfiguration.showRedBox)
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
              child: Text("GET HOST API"),
              onPressed: () {
                final host = AccountAPI.getHost();
                print("host $host");
              })
        ],
      ),
    );
  }
}

///Usamos comando
///$flutter run --dart-define=myBoolVariable=true
///$flutter run --dart-define=showRedBox=true
class EnvironmentConfiguration {
  final showRedBox = const bool.fromEnvironment("showRedBox");
}
