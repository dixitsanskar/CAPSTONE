import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/HomeController.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    
    return GetBuilder<HomeController>(
        builder: (controller) {
          return controller.presed
              ? _SearchPage()
              : _home();
        },
      );
    
    
  }

  Widget _home(){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Get.width * 0.7,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.05),
            TextButton(
              onPressed: () {controller.onpressed(); },
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                primary: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }

   Widget _SearchPage(){
      return Scaffold(
        body: Column(
          children: [
            IconButton(onPressed: (){ controller.onpressed(); }, icon: Icon(Icons.arrow_back_ios, color: Colors.black ,)),
            SizedBox(height: Get.height * 0.05),
            Row(
              children: [
               Container(
              width: Get.width * 0.7,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(width: Get.width * 0.05,), 
          Container( 
             child:
            TextButton(onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [Icon(Icons.search, color: Colors.white, ), Text("Search", style: TextStyle(color: Colors.white),)],),
            style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ),
            width: Get.width * 0.15,
            height: 50,
            )

              ],)
          ],
        ),
        );
   }

}
