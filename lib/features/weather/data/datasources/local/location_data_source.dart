// ignore_for_file: one_member_abstracts

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_geocoding/google_geocoding.dart';
import 'package:injectable/injectable.dart';
import 'package:weather/core/data/storages/local_storage.dart';
import 'package:weather/core/domain/failures/failure.dart';

abstract class LocationDataSource {
  Future<Either<Failure, Position>> getCurrentLocation();
  Future<bool> checkPermission();
  Future<bool> isLocationServiceEnable();
  Future<Either<Failure, String?>> getCurrentPlaceName(Position position);
}

@LazySingleton(as: LocationDataSource)
class LocationDataSourceImpl implements LocationDataSource {
  const LocationDataSourceImpl(this._preference);
  final LocalStorage _preference;
  @override
  Future<Either<Failure, Position>> getCurrentLocation() async {
    try {
      final isEnabled = await isLocationServiceEnable();
      final allowed = await checkPermission();
      if (isEnabled && allowed) {
        final position = await Geolocator.getCurrentPosition();
        return right(position);
      }
      return left(const Failure.locationPermissionFailure());
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      return left(const Failure.locationFailure());
    }
  }

  @override
  Future<bool> checkPermission() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
        '''
Location permissions are permanently denied, we cannot request permissions.
''',
      );
    }
    return true;
  }

  @override
  Future<bool> isLocationServiceEnable() async {
    // Test if location services are enabled.
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }
    return true;
  }

  @override
  Future<Either<Failure, String?>> getCurrentPlaceName(
    Position position,
  ) async {
    try {
      final apiKey = await _preference.getGeocoderApiKey();
      final geocoder = GoogleGeocoding(apiKey!);
      final data = await geocoder.geocoding
          .getReverse(LatLon(position.latitude, position.longitude));
      return right(data?.results?.firstOrNull?.addressComponents?.toString());
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      return left(const Failure.locationFailure());
    }
  }
}
