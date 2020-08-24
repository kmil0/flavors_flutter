import 'dart:ui';
import 'package:meta/meta.dart' show required;

class AppConfig {
  String _apiHost, _icon;
  Color _primaryColor, _secondaryColor;
  bool _debugShowCheckedModeBanner;

  AppConfig._internal();
  static final AppConfig _instance = AppConfig._internal();
  static AppConfig get instance => _instance;

  String get apiHost => _apiHost;
  String get icon => _icon;
  Color get primaryColor => _primaryColor;
  Color get sencondaryColor => _secondaryColor;
  bool get debugShowCheckedModeBanner => _debugShowCheckedModeBanner;

  void init({
    @required String apiHost,
    @required String icon,
    @required Color primaryColor,
    @required Color secondaryColor,
    @required bool debugShowCheckedModeBanner,
  }) {
    this._apiHost = apiHost;
    this._icon = icon;
    this._primaryColor = primaryColor;
    this._secondaryColor = secondaryColor;
    this._debugShowCheckedModeBanner = debugShowCheckedModeBanner;
  }
}
