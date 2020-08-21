import 'package:flutter/material.dart';

import 'app_config.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  final environmentConfiguration = EnvironmentConfiguration();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(config.flavorName),
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
          if(environmentConfiguration.showRedBox)
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

///Usamos comando
///$flutter run --dart-define=myBoolVariable=true
///$flutter run --dart-define=showRedBox=true
class EnvironmentConfiguration {
  final showRedBox = const bool.fromEnvironment("showRedBox");
}
