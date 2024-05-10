import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/util/constants.dart';
import 'package:mini_project/screen/projects.dart';
import 'package:mini_project/widget/dynamicTexts.dart';

import '../logic/controller/StatementDetails.dart';
import '../logic/controller/authController.dart';
import '../route/route.dart';
import 'dashboard.dart';
import 'homePage.dart';

class ProblemStatementDetails extends StatefulWidget {
  ProblemStatementDetails({Key? key}) : super(key: key);

  @override
  State<ProblemStatementDetails> createState() =>
      _ProblemStatementDetailsState();
}

class _ProblemStatementDetailsState extends State<ProblemStatementDetails>
    with SingleTickerProviderStateMixin {
  final controller = Get.find<DetailsController>();

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: DynamicText(
        text: '${controller.prodectData!.title}',
        style: TextStyle(color: darkColorShade, fontSize: 20,),
      ),),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 30),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: darkColorShade),
                    child: TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white,
                      indicatorColor: Colors.white,
                      controller: _tabController,
                      tabs: [
                        Tab(text: "Description",),
                        Tab(text: "Review"),
                        Tab(text: "Collaboration"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Description(controller: controller),
                Review(),
                Collaboration(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/notyet.png',height: 250,width: 250,),
            Text("No Reviews yet", style: TextStyle(fontSize: 25,),),
          ],
        ),
      ),
    );
  }
}

class Collaboration extends StatelessWidget {
  const Collaboration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: ShapeDecoration(
            color: NormalColorShade,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            shadows: [
              BoxShadow(
                color: darkColorShade,
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
                  ),

              child: Column(
                children: [
                  Text(
                    'Submitting your application will share the following with the organizers',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),


                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 55,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                        child: Icon(Icons.person),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),

                          Text(
                            'Your username, first name, and last name',
                            style: TextStyle(
                              color: Color(0xFF868686),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 55,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                        child: Icon(Icons.email),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),

                          Text(
                            'Your registered email',
                            style: TextStyle(
                              color: Color(0xFF868686),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 55,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                        child: Icon(Icons.phone),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),

                          Text(
                            'Your Phone Number',
                            style: TextStyle(
                              color: Color(0xFF868686),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 55,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: OvalBorder(),
                        ),
                        child: Icon(Icons.link),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Links',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),

                          Text(
                            'Various links you have provides',
                            style: TextStyle(
                              color: Color(0xFF868686),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                              if (states.contains(MaterialState.disabled)) {
                                // return the color when the button is disabled
                                return Colors.grey; // For example, return grey color
                              }
                              // return the color when the button is enabled
                              return Color(0xFFD9D9D9);
                            }),
                          ),
                            onPressed: (){
                            Get.toNamed(Routes.application);
                            },
                            child: Text(
                          "Continue to Application"
                        )),
                      )
                    ],
                  )

                ],
              ),

                ),
          ),
        ));
  }
}

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.controller,
  });

  final DetailsController controller;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
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
                  color: NormalColorShade,
                  child: Column(
                    children: [
                      Text('${controller.prodectData!.problemStatement}'),
                      SizedBox(
                        height: 50,
                      ),
                      Text('By - ${controller.prodectData!.author}'),
                    ],
                  )),
              // Add other details as needed
            ],
          ),
        ),
      ),
    );
  }
}
