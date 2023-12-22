import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/controller/SearchController.dart';
import 'package:mini_project/service/handlingDataView.dart';
import 'package:mini_project/widget/infoCard.dart';

import '../controller/HomeController.dart';
import '../route/route.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final controller = Get.put(HomeController());
  final TextEditingController _searchController = TextEditingController();
  final searchController  = Get.put(searchhController());


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
             // margin: EdgeInsets.only(bottom: 10),
              height: Get.height * 0.3,
              width: Get.width * 0.6,
              child: Column(
                children: [
                  Text('CAPSTONE', style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text('C', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),), 
                  Text('ollaborative ', style: TextStyle( fontSize: 20),), 
                  Text('A', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),), Text('pproach to ', style: TextStyle( fontSize: 20),),
                  Text('P', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),), Text('roblem ', style: TextStyle( fontSize: 20),),
                  Text('S', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),), Text('olving ', style: TextStyle( fontSize: 20),),
                  Text('T', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),), Text('hrough ', style: TextStyle( fontSize: 20),),
                  Text('O', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),), Text('nline ', style: TextStyle( fontSize: 20),),
                  Text('N', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),), Text('etworking ', style: TextStyle( fontSize: 20),),
                   Text('E', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),), Text('nvironment ', style: TextStyle( fontSize: 20),),
                  ],)

                  ],)
                  )
               ,
            Container(
              width: Get.width * 0.7,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: _searchController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
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
             searchController.searchProblemStatement(_searchController.text);
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
                controller: _searchController,
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
              searchController.searchProblemStatement(_searchController.text);

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
        child: GetBuilder<searchhController>(builder: (_){
          return HandlingDataView(statusRequest: searchController.statusRequest, widget: 
        SingleChildScrollView(
          child: Column(
            children: List.generate( searchController.searchResuts.length , (index) => GestureDetector(onTap:(){
              Get.toNamed(Routes.psscreen);
            },
            child: InfoCard(
              title: searchController.searchResuts[index].title ,
              description: searchController.searchResuts[index].problemStatement, ),
            )),
          ),
        ),
        );
        },
        )
        )
          ],
        ),
        );
   }

}
