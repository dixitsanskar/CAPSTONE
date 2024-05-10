import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/route/route.dart';
import 'package:mini_project/screen/homePage.dart';

import 'firebase_options.dart';
import 'screen/mainlayout.dart';
import 'util/shared_pref.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
    await SharedPrefs.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'CAPSTONE',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.login,
      getPages: Routes.routes ,
    );
  }
}
