import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mini_project/util/constants.dart';
import 'package:mini_project/util/shared_pref.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class Threads extends StatefulWidget {
  @override
  _ThreadsState createState() => _ThreadsState();
}

class _ThreadsState extends State<Threads> {
  final TextEditingController messageTextController = TextEditingController();
  late IO.Socket socket;
  List<String> messages = [];
  var prefs = SharedPrefs.sharedPrefs;


  @override
  void initState() {
    super.initState();
    initSocket();
    fetchMessages(); // Fetch initial messages
  }

  void initSocket() {
    socket = IO.io(baseUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': true,
    });

    socket.on('message', (data) {
      print('Received message: $data');
      setState(() {
        messages.add(data);
      });
    });

    socket.connect();
  }

  void fetchMessages() async {
    var url = Uri.parse('$baseUrl/messages');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      setState(() {
        messages = data.map((message) => message['text'] as String).toList();
      });
    } else {
      print('Failed to fetch messages. Error: ${response.reasonPhrase}');
    }
  }

  void sendMessage(String message) {
    String? user =  prefs.getString('username');
    socket.emit('message', json.encode({'user': user, 'message': message}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Threaded Conversation"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: messageTextController,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Send a message...',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.white),
                  onPressed: () {
                    sendMessage(messageTextController.text);
                    messageTextController.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
