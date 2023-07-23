// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:geolocator/geolocator.dart';

Future<bool> locationCheck(LatLng? loc) async {
  // check the location of current device and make sure it is within .3 miles of 33.7531° N, 84.3853° W
  double distanceInMiles = await Geolocator.distanceBetween(
          33.7531, 84.3853, loc!.latitude, loc.longitude) *
      0.000621371;
  if (distanceInMiles <= 0.3) {
    return true;
  } else {
    return false;
  }
}
