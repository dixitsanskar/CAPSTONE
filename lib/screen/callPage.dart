// import 'dart:html';

// import 'package:agora_uikit/agora_uikit.dart';
// import 'package:flutter/material.dart';
// import 'package:agora_rtc_engine/agora_rtc_engine.dart';
// import 'package:agora_rtc_engine/agora_rtc_engine_web.dart';
// import 'package:flutter_webrtc/flutter_webrtc.dart';
// import 'package:get/get.dart';
// import 'package:permission_handler/permission_handler.dart';
// import '../util/util.dart';

// class CallPage extends StatefulWidget {
//  CallPage({super.key});



//   @override
//   State<CallPage> createState() => _CallPageState();
// }

// class _CallPageState extends State<CallPage> {
  
//    final RTCVideoRenderer _localRenderer = RTCVideoRenderer();
//   final RTCVideoRenderer _remoteRenderer = RTCVideoRenderer();

//   @override
//   void initState() {
//     super.initState();
//     _localRenderer.initialize();
//     _remoteRenderer.initialize();
   
 
//   }
//    Future<void> enableUserMediaStream() async {
//   var stream = await navigator.mediaDevices.getUserMedia(
// 		{'video': true, 'audio': true},
// 	);
//   emit(state.copyWith(localStream: stream));
// }


//    @override
//   void onInit()
//   {

//     super.onInit();

//   }

//   @override
//   void dispose(){
//     _localRenderer.dispose();
//     _remoteRenderer.dispose();
//     super.dispose();

//   }


//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: const Text('Agora Video Call'),
//       ),
//       body: Stack(
//         children: [
//           AgoraVideoViewer(
//                 client: client,
//                 layoutType: Layout.floating,
//                 enableHostControls: true, // Add this to enable host controls
//               ),
//               AgoraVideoButtons(
//                 client: client,
//               ),
//           // Center(
//           //   child: _remoteVideo(channelName),
//           // ),
//           // Align(
//           //   alignment: Alignment.topLeft,
//           //   child: SizedBox(
//           //     width: 100,
//           //     height: 150,
//           //     child: Center(
//           //       child: _localUserJoined
//           //           ? AgoraVideoView(
//           //         controller: VideoViewController(
//           //           rtcEngine: _engine,
//           //           canvas: const VideoCanvas(uid: 0),
//           //         ),
//           //       )
//           //           : const CircularProgressIndicator(),
//           //     ),
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }

//   Widget _remoteVideo(String? channl) {
//     if (_remoteUid != null) {
//       return AgoraVideoView(
//         controller: VideoViewController.remote(
//           rtcEngine: _engine,
//           canvas: VideoCanvas(uid: _remoteUid),
//           connection: const RtcConnection(channelId: '01'),
//         ),
//       );
//     } else {
//       return const Text(
//         'Please wait for remote user to join',
//         textAlign: TextAlign.center,
//       );
//     }
//   }


  
// // Future<void> _initAgoraRtcEngine() async {
// //     await AgoraRtcEngine.create(appID);
// //     await AgoraRtcEngine.enableVideo();
// // }
// }