import 'package:dartz/dartz.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/features/weather/domain/entities/location.dart';
import 'package:weather/features/weather/domain/entities/weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure, List<Weather>>> getWeatherByCoordinates(
    Location location,
  );
  Future<Either<Failure, List<Weather>>> getWeatherByCity(String city);
}
