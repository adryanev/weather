import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/utils/constants.dart';

@module
abstract class FirebaseModule {
  @lazySingleton
  @preResolve
  Future<FirebaseRemoteConfig> get remoteConfig async {
    final instance = FirebaseRemoteConfig.instance;
    await instance.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(minutes: 5),
      ),
    );
    await instance.setDefaults(const <String, dynamic>{
      KeyConstants.remoteConfigApiKey: '',
      KeyConstants.remoteConfigApiUrl: '',
      KeyConstants.remoteConfigMapsKey: '',
    });
    await instance.fetchAndActivate();
    return instance;
  }
}
