import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/features/weather/data/datasources/remote/weather_remote_source.dart';
import 'package:weather/features/weather/data/models/response_weather.dart';
import 'package:weather/features/weather/domain/entities/location.dart';
import 'package:weather/features/weather/domain/entities/weather.dart';
import 'package:weather/features/weather/domain/repositories/weather_repository.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  const WeatherRepositoryImpl(this._weatherRemoteSource);
  final WeatherRemoteSource _weatherRemoteSource;

  @override
  Future<Either<Failure, List<Weather>>> getWeatherByCity(String city) {
    return _weatherRemoteSource.getWeatherByQuery(city).then(
          (value) => value.map(
            (r) => r.toDomain()!,
          ),
        );
  }

  @override
  Future<Either<Failure, List<Weather>>> getWeatherByCoordinates(
    Location location,
  ) {
    return _weatherRemoteSource
        .getWeatherByCoordinates(location.latitude, location.longitude)
        .then(
          (value) => value.map(
            (r) => r.toDomain()!,
          ),
        );
  }
}
