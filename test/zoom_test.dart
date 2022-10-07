import 'package:flutter_test/flutter_test.dart';
import 'package:zoom/zoom.dart';
import 'package:zoom/zoom_platform_interface.dart';
import 'package:zoom/zoom_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockZoomPlatform 
    with MockPlatformInterfaceMixin
    implements ZoomPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ZoomPlatform initialPlatform = ZoomPlatform.instance;

  test('$MethodChannelZoom is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelZoom>());
  });

  test('getPlatformVersion', () async {
    Zoom zoomPlugin = Zoom();
    MockZoomPlatform fakePlatform = MockZoomPlatform();
    ZoomPlatform.instance = fakePlatform;
  
    expect(await zoomPlugin.getPlatformVersion(), '42');
  });
}
