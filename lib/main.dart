import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/homePage.dart';

import 'mainlayout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Problem Statement Search',
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
