import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/core/domain/usecases/use_case.dart';
import 'package:weather/features/weather/domain/entities/location.dart';
import 'package:weather/features/weather/domain/repositories/location_repository.dart';

@injectable
class GetCurrentLocation extends UseCase<Location, NoParams> {
  const GetCurrentLocation(this._repository);
  final LocationRepository _repository;
  @override
  Future<Either<Failure, Location>> call(NoParams params) {
    return _repository.getCurrentLocation();
  }
}
