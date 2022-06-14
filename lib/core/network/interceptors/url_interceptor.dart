import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/data/storages/local_storage.dart';
import 'package:weather/core/domain/failures/errors.dart';

@lazySingleton
class UrlInterceptor extends Interceptor {
  UrlInterceptor(this._localStorage);
  final LocalStorage _localStorage;
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final url = await _localStorage.getApiUrl();
    if (url == null) {
      return handler
          .reject(DioError(requestOptions: options, error: NoApiUrlError()));
    }

    final newOption = options.copyWith(baseUrl: url);
    return handler.next(newOption);
  }
}
