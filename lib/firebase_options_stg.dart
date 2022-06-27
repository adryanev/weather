// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_stg.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDCqU2cK6DD8seL_Wu9MFRqCuxuW-QX38Y',
    appId: '1:737271602056:web:742a64597ffa6e4525383d',
    messagingSenderId: '737271602056',
    projectId: 'flutter-weather-23117',
    authDomain: 'flutter-weather-23117.firebaseapp.com',
    storageBucket: 'flutter-weather-23117.appspot.com',
    measurementId: 'G-1J5H9H8KYD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRDcwodxxJGeiHszv7SQJC52BDRaWSIrk',
    appId: '1:737271602056:android:1932c9b66eb5162725383d',
    messagingSenderId: '737271602056',
    projectId: 'flutter-weather-23117',
    storageBucket: 'flutter-weather-23117.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDV5xz6fVQ2cmzCcanptO-6PLFgTYcDbA',
    appId: '1:737271602056:ios:54c762d04938b2d025383d',
    messagingSenderId: '737271602056',
    projectId: 'flutter-weather-23117',
    storageBucket: 'flutter-weather-23117.appspot.com',
    androidClientId:
        '737271602056-mr6l90inmoup53413o3nuebt1d8hmjtg.apps.googleusercontent.com',
    iosClientId:
        '737271602056-1g1sf6kkstv5h5q6627nm3jknl4fbtfq.apps.googleusercontent.com',
    iosBundleId: 'dev.adryanev.weather.stg',
  );
}
