


import 'package:get/get.dart';

class DetailsController extends GetxController{
    Map<String, dynamic> prodectData={};

   @override
  void onInit() async {
    var data = Get.arguments[0]['prodectData'] as Map<String, dynamic>;
    prodectData = data;

    super.onInit();
  }
}