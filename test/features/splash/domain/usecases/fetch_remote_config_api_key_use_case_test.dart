import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/domain/usecases/use_case.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/features/splash/domain/entities/remote_config.dart';
import 'package:weather/features/splash/domain/repositories/remote_config_repository.dart';
import 'package:weather/features/splash/domain/usecases/fetch_remote_config_api_key_use_case.dart';

import '../repositories/remote_config_repository_mock.dart';

void main() {
  late FetchRemoteConfigApiKeyUseCase systemUnderTest;
  late RemoteConfigRepository remoteConfigRepository;
  late RemoteConfig<String, String> apiKey;

  setUp(() {
    remoteConfigRepository = RemoteConfigRepositoryMock();
    systemUnderTest = FetchRemoteConfigApiKeyUseCase(remoteConfigRepository);
  });
  apiKey = const RemoteConfig(
    key: KeyConstants.remoteConfigApiKey,
    value: 'Asd12345',
  );

  group('Fetch remote config api key use case', () {
    test(
      'should return RemoteConfig Object of Api Key when success',
      () async {
        // arrange
        when(() => remoteConfigRepository.getApiKey())
            .thenAnswer((_) async => right(apiKey));
        // act
        final result = await systemUnderTest(NoParams());
        final data = result.toOption().toNullable();
        // assert
        verify(
          () => remoteConfigRepository.getApiKey(),
        ).called(1);
        expect(result.isRight(), true);
        expect(data != null, true);
        expect(data, apiKey);
      },
    );
    test(
      'should return Failure when failed',
      () async {
        // arrange
        when(() => remoteConfigRepository.getApiKey()).thenAnswer(
          (_) async => left(
            const Failure.remoteConfigFailure(),
          ),
        );
        // act
        final result = await systemUnderTest(NoParams());
        final data = result.toOption().toNullable();
        // assert
        verify(
          () => remoteConfigRepository.getApiKey(),
        ).called(1);
        expect(result.isLeft(), true);
        expect(data, null);
      },
    );
  });
}
