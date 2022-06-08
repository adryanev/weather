// ignore_for_file: avoid_dynamic_calls

import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

typedef Callback = Function(MethodCall call);

void setupFirebaseRemoteConfigMocks([Callback? customHandlers]) {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelFirebase.channel.setMockMethodCallHandler((call) async {
    if (call.method == 'Firebase#initializeCore') {
      return [
        {
          'name': defaultFirebaseAppName,
          'options': {
            'apiKey': '123',
            'appId': '123',
            'messagingSenderId': '123',
            'projectId': '123',
          },
          'pluginConstants': {
            'plugins.flutter.io/firebase_remote_config': {
              'minimumFetchInterval': 0,
              'fetchTimeout': 0,
              'lastFetchTime': 0,
              'lastFetchStatus': 'success',
              'parameters': <String, dynamic>{}
            }
          },
        }
      ];
    }

    if (call.method == 'Firebase#initializeApp') {
      return <String, dynamic>{
        'name': call.arguments['appName'],
        'options': call.arguments['options'],
        'pluginConstants': <String, dynamic>{},
      };
    }

    if (customHandlers != null) {
      customHandlers(call);
    }

    return null;
  });
}
