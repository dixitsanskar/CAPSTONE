import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/route/route.dart';
import 'package:mini_project/screen/homePage.dart';

import 'screen/mainlayout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'CAPSTONE',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.mainscreen,
      getPages: Routes.routes ,
    );
  }
}
