// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:meta/meta.dart';

abstract class Utils {
  // static Position _currentPosition;
  // static bool _isLoading = false;
  // static double getDistanceFromUser({
  //   @required String lat,
  //   @required String lang,
  // }) {
  //   if ((_currentPosition == null && !_isLoading) ||
  //       _currentPosition?.latitude == null ||
  //       _currentPosition?.longitude == null) {
  //     _isLoading = true;
  //     determinePosition();
  //     return 0;
  //   }
  //   final lat1 = double.tryParse(lat ?? '0') ?? 0;
  //   final lon1 = double.tryParse(lang ?? '0') ?? 0;

  //   final value = Geolocator.distanceBetween(
  //     lat1,
  //     lon1,
  //     _currentPosition.latitude,
  //     _currentPosition.longitude,
  //   );

  //   final normalizedValue = ((value / 1000) * 100).toInt() / 100;

  //   return normalizedValue;
  // }

  // static Future<void> determinePosition() async {
  //   if (Platform.isWindows || Platform.isLinux || kIsWeb) return;
  //   bool serviceEnabled;
  //   LocationPermission permission;

  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return Future.error('Location services are disabled.');
  //   }

  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.deniedForever) {
  //     return Future.error(
  //       'Location permissions are permanently denied, we cannot request permissions.',
  //     );
  //   }

  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission != LocationPermission.whileInUse &&
  //         permission != LocationPermission.always) {
  //       return Future.error(
  //         'Location permissions are denied (actual value: $permission).',
  //       );
  //     }
  //   }

  //   _currentPosition = await Geolocator.getCurrentPosition();
  // }
}
