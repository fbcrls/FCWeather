import 'package:geolocator/geolocator.dart';

class Location {
  late double longitude;
  late double latitude;

  Future getLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    longitude = position.longitude;
    latitude = position.latitude;
  }
}
