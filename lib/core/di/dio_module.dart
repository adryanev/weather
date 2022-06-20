import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather/core/network/adapters/dio_adapter_stubs.dart'
    if (dart.library.io) 'package:weather/core/network/adapters/dio_non_web_adapter.dart'
    if (dart.library.js) 'package:weather/core/network/adapters/dio_web_adapter.dart';
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
    if (kIsWeb) {
      httpClientAdapter = getAdapter();
    } else {
      httpClientAdapter = getAdapter();
    }
  }
  final UrlInterceptor _urlInterceptor;
  final ApiKeyInterceptor _apiKeyInterceptor;
}
