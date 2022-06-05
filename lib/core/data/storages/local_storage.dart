import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract class LocalStorage {
  Future<String?> getApiKey();
  Future<String?> getApiUrl();
  Future<void> setApiKey(String apiKey);
  Future<void> setApiUrl(String apiUrl);
}

@LazySingleton(as: LocalStorage)
class LocalStorageImpl implements LocalStorage {
  const LocalStorageImpl(this._storage);
  final FlutterSecureStorage _storage;
  static const _apiKeyKey = 'apiKey';
  static const _apiUrlKey = 'apiUrl';
  @override
  Future<String?> getApiKey() {
    return _storage.read(key: _apiKeyKey);
  }

  @override
  Future<String?> getApiUrl() {
    return _storage.read(key: _apiUrlKey);
  }

  @override
  Future<void> setApiKey(String apiKey) async {
    await _storage.write(key: _apiKeyKey, value: apiKey);
  }

  @override
  Future<void> setApiUrl(String apiUrl) async {
    await _storage.write(key: _apiUrlKey, value: apiUrl);
  }
}
