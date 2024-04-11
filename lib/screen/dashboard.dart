

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/screen/personalInfo.dart';
import 'package:mini_project/screen/professionalInfo.dart';

import '../logic/controller/authController.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;
  final controller = Get.put(AuthController());
  final List<Widget> _tabs = [
    PersonalInfo(),
    ProfessionalInfo(),
  ];

  @override
  Widget build(BuildContext context) {
    return
     DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: Row(
          children: [
            // Side Navigation Bar
            Container(
              width: 280, // Set the width as per your requirement
              color: Colors.black,
              child: ListView(
                children: [
                  SizedBox(height: 100),
                  Container(
                    padding: EdgeInsetsDirectional.all(10),
                    child: Text('Student Dashboard', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.white),
                  Container(
                    color: _currentIndex == 0 ? Colors.white : Colors.black,
                    child: ListTile(
                    // selectedColor: Colors.white,
                    // textColor: Colors.black,
                    title: Text('Personal Info', style: TextStyle(color: _currentIndex == 0 ? Colors.black : Colors.grey),),
                    onTap: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                  ),),
                  Container(
                     color: _currentIndex == 1 ? Colors.white : Colors.black,
                    child: ListTile(
                    // selectedColor: Colors.white,
                    // textColor: Colors.black,
                    title: Text('Professional Info', style: TextStyle(color: _currentIndex == 1 ? Colors.black : Colors.grey),),
                    onTap: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                  ),)
                ],
              ),
            ),
            // Main Content Area
            Expanded(
              child: _currentIndex == 0
                  ? PersonalInfo()
                  : ProfessionalInfo() ,
            ),
          ],
        ),
      ),
    );
  }
}