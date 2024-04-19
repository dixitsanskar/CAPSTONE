import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/screen/projects.dart';
import 'package:mini_project/widget/dynamicTexts.dart';

import '../logic/controller/StatementDetails.dart';
import '../logic/controller/authController.dart';
import 'dashboard.dart';
import 'homePage.dart';

class ProblemStatementDetails extends GetView<DetailsController> {
  ProblemStatementDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 60,bottom: 30,),
              child: Column(
                children: [
                  DynamicText(
                    text: '${controller.prodectData!.title}',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: Text("Description"),
                        ),
                        TextButton(
                          child: Text("Review"),
                          onPressed: (){},
                        ),
                        TextButton(
                            onPressed: (){},
                            child: Text("Collaboration")
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child:   Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Text(
                    //   'Problem Statement',
                    //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    // ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 100),
                        color: Color(0xFFD9D9D9),
                        child: Column(
                          children: [
                            Text('${controller.prodectData!.problemStatement}'),
                            SizedBox(height: 50,),
                            Text('By - ${controller.prodectData!.author}'),
                          ],
                        )),
                    // Add other details as needed
                  ],
                ),
              ),
            ),
          ),
          // Positioned(
          //   child: GestureDetector(
          //     onTap: () {
          //       Get.back();
          //     },
          //     child: Padding(
          //       padding: EdgeInsets.all(3),
          //       child: Icon(Icons.arrow_back_sharp, color: Colors.white),
          //     ),
          //   ),
          //   left: 100,
          //   top: 100,
          // ),
        ],
      ),
    );
  }
}
