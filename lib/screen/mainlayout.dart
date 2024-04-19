import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/logic/controller/authController.dart';
import 'package:mini_project/screen/about.dart';
import 'package:mini_project/screen/dashboard.dart';
import 'package:mini_project/screen/projects.dart';
import 'package:mini_project/widget/loginwidget.dart';

import 'dashboardMAIN.dart';
import 'homePage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final controller = Get.put(AuthController());
  final List<Widget> _tabs = [
   HomePage(),
   Dashboard(),
    // AboutUs(),
    Projects(),
  ];

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
     return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Capstone'),
          actions: [
            ElevatedButton(onPressed: (){
             setState(() {
               showLoginPopup(context);
             });
            }, child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('Login')
            ,)),
            SizedBox(width: 10,),
            ElevatedButton(onPressed: (){
              setState(() {
                showRegistrationPopup(context);
              });
            }, child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text('Sign Up')
            ,)),

            IconButton(
              icon: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.person, color: Colors.black),
              ),
              onPressed: () {
                // Define what happens when you press the profile icon
              },
            ),
          ],

          bottom:
          TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            onTap: (index) {
              if(index == 5)
              {
                if(!controller.isSignedIn)
                {
                  setState(() {
                    showLoginPopup(context);
                  });


                } else
                {
                  setState(() {
                    _currentIndex = index;
                  });
                }
              }
              else
              { setState(() {
                _currentIndex = index;
              });}

            },
            tabs: [
              Tab(
                //  icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                text: 'Dashboard',
              ),
              Tab(
                // icon: Icon(Icons.info),
                text: 'Projects',
              ),
            ],
          ),

        ),
        body: TabBarView(
          children: _tabs,
        )
        ),
    );
  }
}