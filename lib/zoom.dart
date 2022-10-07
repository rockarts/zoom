
import 'zoom_platform_interface.dart';

class Zoom {
  Future<String?> getPlatformVersion() {
    return ZoomPlatform.instance.getPlatformVersion();
  }
}
