import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/domain/usecases/use_case.dart';
import 'package:weather/features/weather/domain/entities/location.dart';
import 'package:weather/features/weather/domain/entities/weather.dart';
import 'package:weather/features/weather/domain/repositories/weather_repository.dart';

@injectable
class GetWeatherByCoordinates
    extends UseCase<List<Weather>, WeatherByCoordinatesParams> {
  const GetWeatherByCoordinates(this._repository);
  final WeatherRepository _repository;
  @override
  Future<Either<Failure, List<Weather>>> call(
    WeatherByCoordinatesParams params,
  ) {
    return _repository.getWeatherByCoordinates(params.location);
  }
}

class WeatherByCoordinatesParams extends Equatable {
  const WeatherByCoordinatesParams({required this.location});
  final Location location;

  @override
  List<Object?> get props => [location];
}
