import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseModule {
  @lazySingleton
  FirebaseRemoteConfig get remoteConfig => FirebaseRemoteConfig.instance;
}
