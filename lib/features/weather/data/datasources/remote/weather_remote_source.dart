import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/features/weather/data/datasources/remote/client/weather_api_client.dart';
import 'package:weather/features/weather/data/models/response_weather.dart';

abstract class WeatherRemoteSource {
  Future<Either<Failure, ResponseWeather>> getWeatherByCoordinates(
    double latitude,
    double longitude,
  );
  Future<Either<Failure, ResponseWeather>> getWeatherByQuery(String query);
}

@LazySingleton(as: WeatherRemoteSource)
class WeatherRemoteSourceImpl implements WeatherRemoteSource {
  const WeatherRemoteSourceImpl(this._client);
  final WeatherApiClient _client;
  @override
  Future<Either<Failure, ResponseWeather>> getWeatherByCoordinates(
    double latitude,
    double longitude,
  ) async {
    try {
      final data = await _client.getWeather('$latitude, $longitude');
      return right(data);
    } catch (c) {
      log(c.toString());
      return left(const Failure.remoteFailure());
    }
  }

  @override
  Future<Either<Failure, ResponseWeather>> getWeatherByQuery(
    String query,
  ) async {
    try {
      final data = await _client.getWeather(query);
      return right(data);
    } catch (c) {
      log(c.toString());
      return left(const Failure.remoteFailure());
    }
  }
}
