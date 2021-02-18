import 'dart:html';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

bool _serviceEnabled;
PermissionStatus _permissionGranted;

LocationData _locationData;
Location location;

double lat, long;

void checkLocationService() async {
  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return;
    }
  }
  if (_serviceEnabled) {
    getLocation();
  }
}

void checkLocationpermission() async {
  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return;
    }
  }
  if (_permissionGranted == PermissionStatus.granted) {
    checkLocationService();
  }
}

void getLocation() async {
  _locationData = await location.getLocation();

  lat = _locationData.latitude;
  long = _locationData.longitude;
}
