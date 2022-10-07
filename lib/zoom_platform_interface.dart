import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'zoom_method_channel.dart';

abstract class ZoomPlatform extends PlatformInterface {
  /// Constructs a ZoomPlatform.
  ZoomPlatform() : super(token: _token);

  static final Object _token = Object();

  static ZoomPlatform _instance = MethodChannelZoom();

  /// The default instance of [ZoomPlatform] to use.
  ///
  /// Defaults to [MethodChannelZoom].
  static ZoomPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ZoomPlatform] when
  /// they register themselves.
  static set instance(ZoomPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
