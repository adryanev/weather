import 'package:geolocator/geolocator.dart';
import 'package:weather/features/weather/domain/entities/location.dart';

class LocationMapper {
  LocationMapper._();
  static Location toLocation(Position position, String? placemark) => Location(
        name: placemark ?? '',
        latitude: position.latitude,
        longitude: position.longitude,
        fetchOn: DateTime.now(),
      );
}
