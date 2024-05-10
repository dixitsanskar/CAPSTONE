
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:get/get.dart';

class VideoController extends GetxController{

  final RTCVideoRenderer _localRenderer = RTCVideoRenderer();
  final RTCVideoRenderer _remoteRenderer = RTCVideoRenderer();

  @override
  void onInit()
  {
    _localRenderer.initialize();
    _remoteRenderer.initialize();
    super.onInit();

  }

  @override
  void dispose(){
    _localRenderer.dispose();
    _remoteRenderer.dispose();
    super.dispose();

  }


}