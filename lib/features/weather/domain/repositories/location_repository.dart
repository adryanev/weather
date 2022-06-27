// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:weather/core/domain/failures/failure.dart';
import 'package:weather/features/weather/domain/entities/location.dart';

abstract class LocationRepository {
  Future<Either<Failure, Location>> getCurrentLocation();
}
