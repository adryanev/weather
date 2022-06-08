import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/features/splash/data/datasources/local_config_data_source.dart';
import 'package:weather/features/splash/data/datasources/remote_config_data_source.dart';
import 'package:weather/features/splash/data/repositories/remote_config_repository_impl.dart';
import 'package:weather/features/splash/domain/entities/remote_config.dart';

import '../datasources/local_config_data_source_mock.dart';
import '../datasources/remote_config_data_source_mock.dart';

void main() {
  late RemoteConfigRepositoryImpl systemUnderTest;
  late RemoteConfigDataSource dataSource;
  late LocalConfigDataSource localConfigDataSource;

  setUp(() {
    localConfigDataSource = LocalConfigDataSourceMock();
    dataSource = RemoteConfigDataSourceMock();
    systemUnderTest =
        RemoteConfigRepositoryImpl(dataSource, localConfigDataSource);
  });

  group('RemoteConfigRepositoryImpl getApiKey', () {
    late String apiKey;
    late RemoteConfig<String, String> remoteConfig;
    setUp(() {
      apiKey = 'Asd12345';
      remoteConfig = RemoteConfig(
        key: KeyConstants.remoteConfigApiKey,
        value: apiKey,
      );
    });
    test(
      'should return RemoteConfig Object when Success',
      () async {
        // arrange
        when(() => dataSource.getApiKey())
            .thenAnswer((_) async => right(apiKey));
        // act
        final result = await systemUnderTest.getApiKey();
        final data = result.toOption().toNullable();
        // assert
        verify(() => dataSource.getApiKey()).called(1);
        expect(result.isRight(), true);
        expect(data, remoteConfig);
        expect(data?.value, apiKey);
      },
    );

    test(
      'should return Failure when failed',
      () async {
        // arrange
        when(() => dataSource.getApiKey()).thenAnswer(
          (_) async => left(
            const Failure.remoteConfigFailure(),
          ),
        );
        // act
        final result = await systemUnderTest.getApiKey();
        final data = result.toOption().toNullable();
        // assert
        verify(() => dataSource.getApiKey()).called(1);
        expect(result.isLeft(), true);
        expect(data, null);
      },
    );
  });
  group('RemoteConfigRepositoryImpl getApiUrl', () {
    late String apiUrl;
    late RemoteConfig<String, String> remoteConfig;
    setUp(() {
      apiUrl = 'https://google.com';
      remoteConfig =
          RemoteConfig(key: KeyConstants.remoteConfigApiUrl, value: apiUrl);
    });
    test(
      'should return RemoteConfig Object when Success',
      () async {
        // arrange
        when(() => dataSource.getApiUrl())
            .thenAnswer((_) async => right(apiUrl));
        // act
        final result = await systemUnderTest.getApiUrl();
        final data = result.toOption().toNullable();
        // assert
        verify(() => dataSource.getApiUrl()).called(1);
        expect(result.isRight(), true);
        expect(data, remoteConfig);
        expect(data?.value, apiUrl);
      },
    );

    test(
      'should return Failure when failed',
      () async {
        // arrange
        when(() => dataSource.getApiUrl()).thenAnswer(
          (_) async => left(
            const Failure.remoteConfigFailure(),
          ),
        );
        // act
        final result = await systemUnderTest.getApiUrl();
        final data = result.toOption().toNullable();
        // assert
        verify(() => dataSource.getApiUrl()).called(1);
        expect(result.isLeft(), true);
        expect(data, null);
      },
    );
  });
}
