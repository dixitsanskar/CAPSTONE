import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class Threads extends StatelessWidget {
  const Threads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Threaded Conversation",
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

      ],
    );
  }
}



class ChatScreen extends StatefulWidget {
  static String id = 'chat_screen';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final messageTextController = TextEditingController();
  late String messageText;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async{
    try {
      final user = await _auth.currentUser;
      if(user!=null){
        loggedInUser = user;
        print(loggedInUser.email);
      }
    }
    catch(e){
      print(e);
    }
  }

  // void getMessages() async {
  //   final messages = await _fireStore.collection("messages").get();
  //   for(var message in messages.docs){
  //     print(message.data());
  //   };
  // }

  void getStreams() async {
    await for(var snapshot in _fireStore.collection("messages").snapshots()){
      for(var message in snapshot.docs){
        print(message.data());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: null,
        actions: <Widget>[

          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                getStreams();
                // _auth.signOut();
                // Navigator.pop(context);
              }),
        ],
        title: Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: SafeArea(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            messageStream(),

            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      controller: messageTextController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),

                    onPressed: () {
                      // messageTextController.clear();
                      // _fireStore.collection('messages').add({
                      //   'text': messageText,
                      //   'sender' : loggedInUser.email,
                      //   'time': DateTime.now()
                        // FieldValue.serverTimestamp()
                      })
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class messageStream extends StatelessWidget {
  messageStream({Key? key}) : super(key: key);

  @override
  late bool isMe;
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _fireStore.collection('messages').orderBy('time', descending: false).snapshots(),
        // _fireStore.collection("messages").snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.lightBlueAccent,
              ),);
          }

          final messages = snapshot.data!.docs;
          // snapshot.data!.docs.reversed;

          List<MessageBubble> messageBubbles = [];

          for(var message in messages){
            final messageText = message.get('text');
            final messageSender = message.get('sender');
            final messageTime = message.get('time');

            final currentUser = loggedInUser.email;

            if(currentUser == messageSender){
              isMe = true;
            }
            else{
              isMe = false;
            }

            final messageBubble = MessageBubble(messageText, messageSender, isMe,messageTime,);
            messageBubbles.add(messageBubble);
            messageBubbles.sort((a , b ) => b.time.compareTo(a.time));
            // print(messageText);
            // print(messageBubbles.);
          }

          return Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              children: messageBubbles,
            ),
          );

        }
    );
  }
}


class MessageBubble extends StatelessWidget {

  MessageBubble(this.text,this.sender,this.isMe,this.time);
  late final String text;
  late final String sender;
  late bool isMe;
  final Timestamp time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),

      child: Column(
          crossAxisAlignment: isMe? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: <Widget>[
            Text((sender),
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.blueGrey
              ),),

            // Text(
            //   ' $sender ${DateTime.fromMillisecondsSinceEpoch(time.seconds * 1000)}',// add this only if you want to show the time along with the email. If you dont want this then don't add this DateTime thing
            //   style: TextStyle(color: Colors.black54, fontSize: 12),
            // ),

            Material(
              elevation: 5,
              borderRadius: BorderRadius.only(
                  topLeft: isMe? Radius.circular(30) : Radius.zero,
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topRight: isMe? Radius.zero : Radius.circular(30)

              ),

              color: isMe ? Colors.lightBlueAccent : Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Text('$text',
                  style: TextStyle(fontSize: 15,
                      color: isMe? Colors.white : Colors.blueGrey),
                ),
              ),
            ),
          ]),
    );
  }
}

