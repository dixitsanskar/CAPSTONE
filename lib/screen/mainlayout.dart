import 'package:flutter/material.dart';
import 'package:mini_project/screen/about.dart';

import 'homePage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  final List<Widget> _tabs = [
   HomePage(), 
   AboutUs()
  ];

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
     return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        
        body: Stack(
          children: [
            TabBarView(
              children: _tabs,
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(left: 300, right: 300, top: 10 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black
                ),
                //color: Colors.black,
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  tabs: [
                    Tab(
                    //  icon: Icon(Icons.home),
                      text: 'Home',
                    ),
                    Tab(
                     // icon: Icon(Icons.info),
                      text: 'About',
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
        ),
    );
  }
}