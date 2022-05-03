import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/domain/usecases/use_case.dart';
import 'package:weather/features/splash/domain/repositories/remote_config_repository.dart';
import 'package:weather/features/splash/domain/usecases/fetch_remote_config_api_url_use_case.dart';

import '../repositories/remote_config_repository_mock.dart';

void main() {
  late FetchRemoteConfigApiUrlUseCase systemUnderTest;
  late RemoteConfigRepository remoteConfigRepository;
  late String apiUrl;

  setUp(() {
    remoteConfigRepository = RemoteConfigRepositoryMock();
    systemUnderTest = FetchRemoteConfigApiUrlUseCase(remoteConfigRepository);
    apiUrl = 'https://google.com';
  });

  group('Fetch Remote Config Use Case', () {
    test(
      'should return String Api Url when success',
      () async {
        // arrange
        when(() => remoteConfigRepository.getApiUrl())
            .thenAnswer((_) async => right(apiUrl));
        // act
        final result = await systemUnderTest(NoParams());
        final data = result.toOption().toNullable();
        // assert
        verify(
          () => remoteConfigRepository.getApiUrl(),
        ).called(1);
        expect(result.isRight(), true);
        expect(data != null, true);
        expect(data, apiUrl);
      },
    );
    test(
      'should return Failure when failed',
      () async {
        // arrange
        when(() => remoteConfigRepository.getApiUrl()).thenAnswer(
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
          () => remoteConfigRepository.getApiUrl(),
        ).called(1);
        expect(result.isLeft(), true);
        expect(data, null);
      },
    );
  });
}
