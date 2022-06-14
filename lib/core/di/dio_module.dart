import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather/core/network/interceptors/api_key_interceptor.dart';
import 'package:weather/core/network/interceptors/url_interceptor.dart';

@LazySingleton(as: Dio)
class DioModule with DioMixin implements Dio {
  DioModule(this._urlInterceptor, this._apiKeyInterceptor) {
    final newOptions = BaseOptions(
      contentType: 'application/json',
      connectTimeout: 120000,
      sendTimeout: 120000,
      receiveTimeout: 120001,
    );

    options = newOptions;
    interceptors.addAll([
      _urlInterceptor,
      _apiKeyInterceptor,
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ),
    ]);

    httpClientAdapter = DefaultHttpClientAdapter();
  }
  final UrlInterceptor _urlInterceptor;
  final ApiKeyInterceptor _apiKeyInterceptor;
}
