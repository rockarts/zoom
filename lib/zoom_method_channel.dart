import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'zoom_platform_interface.dart';

/// An implementation of [ZoomPlatform] that uses method channels.
class MethodChannelZoom extends ZoomPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('zoom');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
