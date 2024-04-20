import 'dart:html';

import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:agora_rtc_engine/agora_rtc_engine_web.dart';
import 'package:permission_handler/permission_handler.dart';
import '../util/util.dart';

class CallPage extends StatefulWidget {
 CallPage({super.key});



  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  
 String? channelName;
  int? _remoteUid = 1;
  bool _localUserJoined = false;
  late RtcEngine _engine;
   final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: appID,
      channelName: '01',
      tempToken: tokens,
      uid: 0,
    ),
  );

    void initAgora() async {
       await window.navigator.getUserMedia(audio: true, video: true) ;
    await client.initialize();
  }

  //  Future<void> initAgora() async {
  //   // retrieve permissions
   

  //   //create the engine
   



  //   _engine = createAgoraRtcEngine();
  //   await _engine.initialize(const RtcEngineContext(
  //     appId: appID,

  //     channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
  //   ));

  //   _engine.registerEventHandler(
  //     RtcEngineEventHandler(
  //       onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
  //         debugPrint("local user ${connection.localUid} joined");
  //         setState(() {
  //           _localUserJoined = true;
  //         });
  //       },
  //       onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
  //         debugPrint("remote user $remoteUid joined");
  //         setState(() {
  //           _remoteUid = remoteUid;
  //         });
  //       },
  //       onUserOffline: (RtcConnection connection, int remoteUid,
  //           UserOfflineReasonType reason) {
  //         debugPrint("remote user $remoteUid left channel");
  //         setState(() {
  //           _remoteUid = null;
  //         });
  //       },
  //       onTokenPrivilegeWillExpire: (RtcConnection connection, String token) {
  //         debugPrint(
  //             '[onTokenPrivilegeWillExpire] connection: ${connection.toJson()}, token: $token');
  //       },
  //     ),
  //   );

  //   await _engine.setClientRole(role: ClientRoleType.clientRoleBroadcaster);
  //   await _engine.enableVideo();
  //   await _engine.startPreview();

  //   //await _engine.joinChannel(token: token, channelId: channel, options: null, uid: 0,);
  // }


  @override
  void initState() {
    super.initState();
    initAgora();
    // initialize agora sdk
    // initialize();
  }

  // Future<void> initialize() async {
  //   if (appID.isEmpty) {
  //     setState(() {
  //       _infoStrings.add(
  //         'APP_ID missing, please provide your APP_ID in settings.dart',
  //       );
  //       _infoStrings.add('Agora Engine is not starting');
  //     });
  //     return;
  //   }
  // await _initAgoraRtcEngine();
  //   _addAgoraEventHandlers();
  //   await AgoraRtcEngine.enableWebSdkInteroperability(true);
  //   VideoEncoderConfiguration configuration = VideoEncoderConfiguration();
  //   configuration.dimensions = Size(1920, 1080);
  //   await AgoraRtcEngine.joinChannel(null, widget.channelName, null, 0);
  // }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Agora Video Call'),
      ),
      body: Stack(
        children: [
          AgoraVideoViewer(
                client: client,
                layoutType: Layout.floating,
                enableHostControls: true, // Add this to enable host controls
              ),
              AgoraVideoButtons(
                client: client,
              ),
          // Center(
          //   child: _remoteVideo(channelName),
          // ),
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: SizedBox(
          //     width: 100,
          //     height: 150,
          //     child: Center(
          //       child: _localUserJoined
          //           ? AgoraVideoView(
          //         controller: VideoViewController(
          //           rtcEngine: _engine,
          //           canvas: const VideoCanvas(uid: 0),
          //         ),
          //       )
          //           : const CircularProgressIndicator(),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _remoteVideo(String? channl) {
    if (_remoteUid != null) {
      return AgoraVideoView(
        controller: VideoViewController.remote(
          rtcEngine: _engine,
          canvas: VideoCanvas(uid: _remoteUid),
          connection: const RtcConnection(channelId: '01'),
        ),
      );
    } else {
      return const Text(
        'Please wait for remote user to join',
        textAlign: TextAlign.center,
      );
    }
  }


  
// Future<void> _initAgoraRtcEngine() async {
//     await AgoraRtcEngine.create(appID);
//     await AgoraRtcEngine.enableVideo();
// }
}