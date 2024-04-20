import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../screen/callPage.dart';

class AgoraVideo extends StatefulWidget {
  @override
  _AgoraVideoState createState() => _AgoraVideoState();
}

class _AgoraVideoState extends State<AgoraVideo> {
  final myController = TextEditingController();
  bool _validateError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Agora Group Video Call'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top:100)),
            Image(image: NetworkImage('https://www.agora.io/en/wp-content/uploads/2019/07/agora-symbol-vertical.png'),height: 100,),
            Padding(padding: EdgeInsets.only(top:20)),
            Text('Group Video Call',
             style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),           
             ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Container(
              width: 300,
              child: TextFormField(
                controller: myController,
                decoration: InputDecoration(
                  labelText: 'Channel Name',
                  labelStyle: TextStyle(color: Colors.blue),
                  hintText: 'test',
                  hintStyle: TextStyle(color: Colors.black45),
                  errorText: _validateError ? 'Channel name is mandatory' : null,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 30)),
              Container(
              width: 90,
              child: MaterialButton(
                onPressed: onJoin,
                height: 40,
                color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Join', style: TextStyle(color: Colors.white)),
                    Icon(Icons.arrow_forward,color: Colors.white),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    
  }
  Future<void> onJoin() async{
    setState(() {
      myController.text.isEmpty 
      ? _validateError = true
      : _validateError = false;
    });
    // await _permissionHandler.requestPermissions([PermissionGroup.camera, PermissionGroup.microphone]);
 await [
  Permission.location,
  Permission.storage,
].request();

    Navigator.push(context, 
    MaterialPageRoute(
      builder: (context)=> CallPage(),)
    );
  }
}

