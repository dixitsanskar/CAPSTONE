import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Threadsss extends StatelessWidget {
  const Threadsss({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Threaded Conversation",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class Threads extends StatelessWidget {
  Threads({
    Key? key,
  }) : super(key: key);

  final messageTextController = TextEditingController();
  late String messageText;

  late RxList messages = [
    MessageBubble(
      "Hi Sir, I am a flutter Developer. Can you please guide me!",
      false,
    ),
    MessageBubble(
      "Yes Sure",
      true,
    ),
  ].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text("Threaded Conversation"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            // Wrap ListView.builder with Expanded
            child: Container(
              child: Obx(
                () => ListView.builder(
                  itemCount: messages.length, // Add itemCount property
                  itemBuilder: (BuildContext context, int index) {
                    return messages[index];
                  },
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: messageTextController,
                    onChanged: (value) {
                      messageText = value;
                    },
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                      hintText: 'Send a message...',
                      hintStyle: TextStyle(color: Colors.white),
                      icon: Padding(
                        padding: EdgeInsets.all(4),
                      ),
                      border: InputBorder.none,
                    ),
                    cursorColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 50,
                    height: 33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff3E2F96),
                    ),
                    child: Center(
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          messages.add(MessageBubble(messageText, true));
                          messageTextController.clear();
                        },
                        icon: Icon(Icons.send, color: Colors.white, size: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  MessageBubble(this.text, this.isMe);

  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: isMe ? 80 : 10,
        right: isMe ? 10 : 80,
        bottom: 5,
        top: 5,
      ),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            color: isMe ? Colors.grey[300] : Color(0xffCDC6F2),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '$text',
                    style: TextStyle(
                      fontSize: 16,
                      color: isMe ? Colors.black : Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.done,
                          size: 14, color: isMe ? Colors.black : Colors.black),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}