import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/widget/dynamicTexts.dart';

import '../logic/controller/StatementDetails.dart';

class ProblemStatementDetails extends GetView<DetailsController> {
  const ProblemStatementDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 30, bottom: 30, right: 30),
              child: DynamicText(
                text: '${controller.prodectData!.title}',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          Column(
            children: [
            Flexible(flex: 7,
              child:   Container(
                margin: const EdgeInsets.only(top: 250),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Problem Statement',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text('${controller.prodectData!.problemStatement}'),
                      // Add other details as needed
                    ],
                  ),
                ),
              ),
),
              Flexible(flex: 1,
                child: Column(
                  children: [
                    Spacer(),

                    Container(
                  alignment: Alignment.bottomCenter,
                  color:  Colors.black,
                  child: Text(
                    'Problem Startement By - ',
                    style: TextStyle(
                      color:  Colors.white,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                ),
                SizedBox(height: 7,),
                Container(
                  alignment: Alignment.bottomCenter,
                  // color:  Colors.black,
                  child: Text(
                    '${controller.prodectData!.author}',
                    style: TextStyle(
                      color:  Colors.black,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                ),
                  ],

              ))

            ],
          ),
          Positioned(
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Icon(Icons.arrow_back_sharp, color: Colors.white),
              ),
            ),
            left: 10,
            top: 
            10,
          ),
        ],
      ),
    );
  }
}
