


import 'package:get/get.dart';
import 'package:mini_project/model/problemModel.dart';

class DetailsController extends GetxController{
    Results? prodectData;


   @override
  void onInit() async {
    var data = Get.arguments['searchData'] as Results;
    prodectData = data ;
    

    super.onInit();
  }

   RxInt selectedTab = 0.obs; // Observable variable to track the selected tab index

  // Method to update the selected tab index
  void selectTab(int index) {
    selectedTab.value = index;
  }
}