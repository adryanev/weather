import 'package:fake_firebase_remote_config/fake_firebase_remote_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/features/splash/data/datasources/remote_config_data_source.dart';

import '../../../../helpers/firebase/mock.dart';

void main() {
  setupFirebaseRemoteConfigMocks();

  const apiKey = 'Asd12345';
  const apiUrl = 'https://google.com';
  late RemoteConfigDataSource systemUnderTest;
  late FakeRemoteConfig config;

  setUpAll(() async {
    await Firebase.initializeApp();

    config = FakeRemoteConfig();
    await config.setDefaults(<String, dynamic>{
      KeyConstants.remoteConfigApiKey: '',
      KeyConstants.remoteConfigApiUrl: '',
    });

    config.loadMockData(<String, dynamic>{
      KeyConstants.remoteConfigApiKey: apiKey,
      KeyConstants.remoteConfigApiUrl: apiUrl,
    });

    await config.fetchAndActivate();
  });
  setUp(() {
    systemUnderTest = RemoteConfigDataSourceImpl(config);
  });
  group('RemoteConfigDataSource', () {
    test(
      'should return String of Api Key when succeed',
      () async {
        // act
        final result = await systemUnderTest.getApiKey();
        final data = result.toOption().toNullable();
        // assert
        expect(result.isRight(), true);
        expect(data != null, true);
        expect(data, apiKey);
      },
    );

    test(
      'should return String of Api Url when succeed',
      () async {
        // act
        final result = await systemUnderTest.getApiUrl();
        final data = result.toOption().toNullable();
        // assert
        expect(result.isRight(), true);
        expect(data != null, true);
        expect(data, apiUrl);
      },
    );
  });
}
