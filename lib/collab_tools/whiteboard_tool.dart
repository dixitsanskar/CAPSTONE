import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:http/http.dart' as http;

class WhiteboardScreen extends StatefulWidget {
  @override
  _WhiteboardScreenState createState() => _WhiteboardScreenState();
}

class _WhiteboardScreenState extends State<WhiteboardScreen> {
  final flutterWebViewPlugin = FlutterWebviewPlugin();
  String roomUUID = "";
  String roomToken = "";

  @override
  void initState() {
    super.initState();
    createRoomAndGenerateToken();
  }

  Future<void> createRoomAndGenerateToken() async {
    final String sdkToken = "NETLESSSDK_YWs9UHJNU1o5X2Q3a25FU2w2NCZub25jZT0zZjgxMjkyMC1mZjA2LTExZWUtODNmYy1mNWQzZTZhOGY0MTYmcm9sZT0wJnNpZz1kN2E5NWY3MDBhMmY5ODUwYzcwMTg0ZjgwZjhmZDQ1MGFmOGM2ZThlYzExZmQ5MzA4YWU4MTUwYjg1OTZiODMw";
    final String apiUrl = "https://api.netless.link/v5/rooms";

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        "token": sdkToken,
        "Content-Type": "application/json",
        "region": "us-sv",
      },
      body: json.encode({"isRecord": false}),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      roomUUID = responseData['uuid'];
      roomToken = await generateRoomToken(roomUUID);
      initializeWhiteboard();
    } else {
      print("Failed to create room: ${response.statusCode}");
    }
  }

  Future<String> generateRoomToken(String roomUUID) async {
    final String sdkToken = "NETLESSSDK_YWs9UHJNU1o5X2Q3a25FU2w2NCZub25jZT0zZjgxMjkyMC1mZjA2LTExZWUtODNmYy1mNWQzZTZhOGY0MTYmcm9sZT0wJnNpZz1kN2E5NWY3MDBhMmY5ODUwYzcwMTg0ZjgwZjhmZDQ1MGFmOGM2ZThlYzExZmQ5MzA4YWU4MTUwYjg1OTZiODMw";
    final String apiUrl = "https://api.netless.link/v5/tokens/rooms/$roomUUID";

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        "token": sdkToken,
        "Content-Type": "application/json",
        "region": "us-sv",
      },
      body: json.encode({"lifespan": 3600000, "role": "admin"}),
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      print("Failed to generate room token: ${response.statusCode}");
      return "";
    }
  }

  Future<void> initializeWhiteboard() async {
    final String appIdentifier = "PDJF4P7-Ee6D_PXT5qj0Fg/RCfb07e7tqxRNg";
    final String jsFunction =
        "initializeWhiteboard('$appIdentifier', '$roomUUID', '$roomToken')";
    await flutterWebViewPlugin.evalJavascript(jsFunction);
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'assets/index.html', // Path to your HTML file
      appBar: AppBar(title: Text('Whiteboard')),
    );
  }
}
