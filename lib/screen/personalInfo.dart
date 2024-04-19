import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final _formKey = GlobalKey<FormState>();
   TextEditingController name = TextEditingController();
   TextEditingController email = TextEditingController();
   TextEditingController collegeName = TextEditingController();
   TextEditingController rollNo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Student Form'),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 95,),
                Container(
                  padding: EdgeInsetsDirectional.all(10),
                  child: Text('Personal Info', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
                ),
                Divider(color: Colors.black),
                SizedBox(height: 16),
                Container(
                  margin: EdgeInsets.only(right: 100),
                  padding: EdgeInsets.only(left: 10, right: 100),
                  child: Column(
        
                    children: [
                      TextFormField(
                        controller: name,
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    name = TextEditingController.fromValue(TextEditingValue(text: value!));
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    email = TextEditingController.fromValue(TextEditingValue(text: value!));
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(labelText: 'College Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your college name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    collegeName = TextEditingController.fromValue(TextEditingValue(text: value!));
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(labelText: 'University Roll No'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your roll number';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    rollNo = TextEditingController.fromValue(TextEditingValue(text: value!));
                  },
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                     fixedSize: 
                Size(120, 50), // Set the width and height as needed
                    padding: EdgeInsets.all(10),
                    side: BorderSide(color: Colors.black, width: 2),
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Now you can use the collected data (name, email, collegeName, rollNo)
                      // For demonstration, print the values
                      print('Name: $name');
                      print('Email: $email');
                      print('College Name: $collegeName');
                      print('Roll No: $rollNo');
                    }
                  },
                  child: Text('Submit', style: TextStyle(color: Colors.white),),
                ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}