import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/utils/dartz_extensions.dart';
import 'package:weather/features/weather/data/datasources/local/location_data_source.dart';
import 'package:weather/features/weather/data/models/location_mapper.dart';
import 'package:weather/features/weather/domain/entities/location.dart';
import 'package:weather/features/weather/domain/repositories/location_repository.dart';

@LazySingleton(as: LocationRepository)
class LocationRepositoryImpl implements LocationRepository {
  const LocationRepositoryImpl(this._dataSource);
  final LocationDataSource _dataSource;
  @override
  Future<Either<Failure, Location>> getCurrentLocation() async {
    final position = await _dataSource.getCurrentLocation();
    if (position.isLeft()) {
      return left(position.getLeft()!);
    }
    final placemark = await _dataSource
        .getCurrentPlaceName(position.toOption().toNullable()!);

    if (placemark.isLeft()) {
      return left(placemark.getLeft()!);
    }

    return right(
      LocationMapper.toLocation(position.getRight()!, placemark.getRight()),
    );
  }
}
