import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Environment {
  static const envDev = 'development';
  static const envStg = 'staging';
  static const envProd = 'production';
}

class KeyConstants {
  static const remoteConfigApiKey = 'api_key';
  static const remoteConfigApiUrl = 'api_url';
  static const remoteConfigMapsKey = 'google_maps_api_key';
}

class ScreenUtilConstants {
  static const width = 390.0;
  static const height = 844.0;
}

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

class DateTimeFormat {
  static DateFormat get dayString => DateFormat.EEEE();
  static DateFormat get monthAbbrWithDate => DateFormat.MMMMd();
  static DateFormat get hourMinutes => DateFormat.Hm();
}

enum MessageType {
  info,
  warning,
  success,
  danger,
}
