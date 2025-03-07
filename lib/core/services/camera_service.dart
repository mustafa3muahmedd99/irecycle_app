import 'package:camera/camera.dart';

class CameraService {
  CameraController? _cameraController;

  Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    _cameraController = CameraController(
      cameras.first,
      ResolutionPreset.medium,
    );
    await _cameraController!.initialize();
  }

  CameraController? get cameraController => _cameraController;

  void dispose() {
    _cameraController?.dispose();
  }
}
