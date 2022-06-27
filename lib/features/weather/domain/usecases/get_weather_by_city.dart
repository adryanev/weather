import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/domain/usecases/use_case.dart';
import 'package:weather/features/weather/domain/entities/weather.dart';
import 'package:weather/features/weather/domain/repositories/weather_repository.dart';

@injectable
class GetWeatherByCity extends UseCase<List<Weather>, WeatherByCityParams> {
  const GetWeatherByCity(this._repository);
  final WeatherRepository _repository;
  @override
  Future<Either<Failure, List<Weather>>> call(WeatherByCityParams params) {
    return _repository.getWeatherByCity(params.city);
  }
}

class WeatherByCityParams extends Equatable {
  const WeatherByCityParams({required this.city});
  final String city;

  @override
  List<Object?> get props => [city];
}
