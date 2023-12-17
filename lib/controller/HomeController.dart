

import 'package:get/get.dart';

class HomeController extends GetxController {
  bool presed = false;
  void onpressed() {
    presed = !presed;
    update();
  }
}
