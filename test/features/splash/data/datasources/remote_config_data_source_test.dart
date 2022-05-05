import 'package:fake_firebase_remote_config/fake_firebase_remote_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/features/splash/data/datasources/remote_config_data_source.dart';

import '../../../../helpers/firebase/mock.dart';

Future<void> main() async {
  setupFirebaseRemoteConfigMocks();

  late RemoteConfigDataSource systemUnderTest;
  const apiKey = 'Asd12345';
  const apiUrl = 'https://google.com';
  final config = FakeRemoteConfig();
  await config.setDefaults(<String, dynamic>{
    remoteConfigApiKey: '',
    remoteConfigApiUrl: '',
  });

  config.loadMockData(<String, dynamic>{
    remoteConfigApiKey: apiKey,
    remoteConfigApiUrl: apiUrl,
  });

  await config.fetchAndActivate();

  setUpAll(() async {
    await Firebase.initializeApp();
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
