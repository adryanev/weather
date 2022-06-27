import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/data/storages/local_storage.dart';
import 'package:weather/core/domain/failures/errors.dart';

@lazySingleton
class ApiKeyInterceptor extends Interceptor {
  ApiKeyInterceptor(this._localStorage);
  final LocalStorage _localStorage;
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final apiKey = await _localStorage.getApiKey();
    if (apiKey == null) {
      return handler.reject(
        DioError(
          requestOptions: options,
          error: NoApiKeyError(),
        ),
      );
    }
    final newOption = options.copyWith(
      queryParameters: <String, dynamic>{
        ...options.queryParameters,
        'key': apiKey,
      },
    );
    return handler.next(newOption);
  }
}
