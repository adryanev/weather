import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:weather/core/domain/unit_group.dart';
import 'package:weather/features/weather/data/models/response_weather.dart';

part 'weather_api_client.g.dart';

@lazySingleton
@RestApi()
abstract class WeatherApiClient {
  @factoryMethod
  factory WeatherApiClient(Dio dio) = _WeatherApiClient;

  @GET('service/timeline/{query}')
  Future<ResponseWeather> getWeather(
    @Path('query') String query, [
    UnitGroup unitGroup = UnitGroup.metric,
    @Query('contentType') String contentType = 'json',
  ]);
}
