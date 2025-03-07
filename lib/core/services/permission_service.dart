import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  Future<bool> requestCameraPermission() async {
    return await Permission.camera.request().isGranted;
  }

  Future<bool> requestLocationPermission() async {
    return await Permission.location.request().isGranted;
  }

  Future<bool> requestAllPermissions() async {
    bool camera = await requestCameraPermission();
    bool location = await requestLocationPermission();
    return camera && location;
  }
}
