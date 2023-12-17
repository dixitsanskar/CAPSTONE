import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/widget/infoCard.dart';

import '../controller/HomeController.dart';
import '../route/route.dart';

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
            GestureDetector( onTap:() {
              controller.onpressed();
          },
            child:
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 50,
              width: Get.width * 0.1,

              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.search, color: Colors.white,),
                Text('Search', style: TextStyle(
                  color: Colors.white
                ), )
              ]),
            )
           )
          ],
        ),
      ),
    );
  }

   Widget _SearchPage(){
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){ controller.onpressed(); }, icon: Icon(Icons.arrow_back_ios, color: Colors.black ,)),
            SizedBox(height: Get.height * 0.05),
            Row(
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
            SizedBox(width: Get.width * 0.03,), 
          GestureDetector( onTap:() {
              
          },
            child:
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(children: [
                Icon(Icons.search, color: Colors.white,),
                Text('Search', style: TextStyle(
                  color: Colors.white
                ), )
              ]),
            )
           )

              ],),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text('Search Result', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
             Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(10, (index) => GestureDetector(onTap:(){
              Get.toNamed(Routes.psscreen);
            },
            child: InfoCard(),
            )),
          ),
        ),)
          ],
        ),
        );
   }

}
