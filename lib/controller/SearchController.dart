

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/service/handlingdatacontroller.dart';

import '../model/problemModel.dart';
import '../service/service.dart';
import '../service/statusrequest.dart';

class searchhController extends GetxController{
  late StatusRequest statusRequest;
  var searchResuts = <Results>[].obs;
  int _pageNo = 1 ;
  var textfield = 0.obs;
  final scrollControllerResults = ScrollController();

  

  @override
  void onInit() async {
    super.onInit();
    scrollControllerResults.addListener(() {
      if(scrollControllerResults.position.pixels == scrollControllerResults.position.maxScrollExtent)
      {
        searchProblemStatement(' ');
      }
    });
  }

  void searchProblemStatement(String searchVal) async
  {
     statusRequest = StatusRequest.loading;
    var result = await SearchServices.searchProblemStatement(_pageNo, searchVal);
   
    statusRequest= handlingData(result);
    
    if(result.isNotEmpty)
    { searchResuts.value=[];
      statusRequest = StatusRequest.success;
      searchResuts.addAll(result);
      _pageNo++;
      
    }
    else
    {
      statusRequest = StatusRequest.failure;
    }
    update();
  }
  

  void clearSearch()
  {
    searchResuts.clear();
    update();
  }
}