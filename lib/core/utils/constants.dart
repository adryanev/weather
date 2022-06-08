import 'package:flutter/material.dart';

class Environment {
  static const envDev = 'development';
  static const envStg = 'staging';
  static const envProd = 'production';
}

class KeyConstants {
  static const remoteConfigApiKey = 'api_key';
  static const remoteConfigApiUrl = 'api_url';
}

class ScreenUtilConstants {
  static const width = 390.0;
  static const height = 844.0;
}

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

enum MessageType {
  info,
  warning,
  success,
  danger,
}
