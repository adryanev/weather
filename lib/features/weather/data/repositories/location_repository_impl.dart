import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/features/weather/data/datasources/local/location_data_source.dart';
import 'package:weather/features/weather/data/models/location_mapper.dart';
import 'package:weather/features/weather/domain/entities/location.dart';
import 'package:weather/features/weather/domain/repositories/location_repository.dart';

@LazySingleton(as: LocationRepository)
class LocationRepositoryImpl implements LocationRepository {
  const LocationRepositoryImpl(this._dataSource);
  final LocationDataSource _dataSource;
  @override
  Future<Either<Failure, Location>> getCurrentLocation() {
    return _dataSource.getCurrentLocation().then(
          (value) => value.map(
            LocationMapper.toLocation,
          ),
        );
  }
}
