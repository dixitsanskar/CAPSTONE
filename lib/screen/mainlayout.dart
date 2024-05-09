import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/logic/controller/authController.dart';
import 'package:mini_project/screen/about.dart';
import 'package:mini_project/screen/dashboardMAIN.dart';
import 'package:mini_project/screen/homePage.dart';
import 'package:mini_project/screen/projects.dart';
import 'package:mini_project/util/constants.dart';
import 'package:mini_project/widget/loginwidget.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Get.put(AuthController());
  final List<Widget> _tabs = [
    HomePage(),
    Dashboard(),
    AboutUs(), // Assuming you have AboutUs and Projects widgets defined
    Projects(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: darkColorShade,
          title: Row(
            children: [
              Text('Capstone', style: TextStyle(color: Colors.white)),
              SizedBox(width: 8),
              Expanded(
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  indicatorColor: Colors.white,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  isScrollable: true, // Allow tabs to scroll horizontally
                  physics: BouncingScrollPhysics(), // Add bounce effect when scrolling
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.symmetric(horizontal: 16.0), // Adjust padding here
                  tabs: [
                    Tab(text: 'Home'),
                    Tab(text: 'Dashboard'),
                    Tab(text: 'About'),
                    Tab(text: 'Projects'),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0), // Adjust the right padding here
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }
}
