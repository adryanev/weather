import 'package:freezed_annotation/freezed_annotation.dart';
part 'remote_config.freezed.dart';

@freezed
class RemoteConfig<Key, Value> with _$RemoteConfig<Key, Value> {
  const factory RemoteConfig({
    required Key key,
    required Value value,
  }) = _RemoteConfig<Key, Value>;
}
