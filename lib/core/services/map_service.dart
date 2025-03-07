import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapService {
  GoogleMapController? _mapController;

  void setMapController(GoogleMapController controller) {
    _mapController = controller;
  }

  void moveToLocation(LatLng position) {
    _mapController?.animateCamera(CameraUpdate.newLatLng(position));
  }
}
