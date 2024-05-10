import 'dart:js' as js;


class WhiteboardIntegration {
  static void initializeWhiteboard(String appIdentifier, String roomUUID, String roomToken) {
    js.context.callMethod('initializeWhiteboard', [appIdentifier, roomUUID, roomToken]);
  }
}