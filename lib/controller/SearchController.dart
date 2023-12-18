

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/problemModel.dart';
import '../service/service.dart';

class SearchController extends GetxController{

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
    var result = await SearchServices.searchProblemStatement(_pageNo, searchVal);
    if(result.isNotEmpty)
    {
      searchResuts.addAll(result);
      _pageNo++;
    }
    update();
  }
  

  void clearSearch()
  {
    searchResuts.clear();
    update();
  }
}