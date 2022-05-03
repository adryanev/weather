import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/domain/usecases/use_case.dart';
import 'package:weather/features/splash/domain/repositories/remote_config_repository.dart';
import 'package:weather/features/splash/domain/usecases/fetch_remote_config_api_key_use_case.dart';

import '../repositories/remote_config_repository_mock.dart';

void main() {
  late FetchRemoteConfigApiKeyUseCase systemUnderTest;
  late RemoteConfigRepository remoteConfigRepository;
  late String apiKey;

  setUp(() {
    remoteConfigRepository = RemoteConfigRepositoryMock();
    systemUnderTest = FetchRemoteConfigApiKeyUseCase(remoteConfigRepository);
  });
  apiKey = 'Asd123';

  group('Fetch remote config api key use case', () {
    test(
      'should return String Api Url when success',
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
            const RemoteConfigFailure(
              'cannot fetch remote config',
            ),
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
