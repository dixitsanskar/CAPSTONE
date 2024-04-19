import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/screen/projects.dart';
import 'package:mini_project/widget/dynamicTexts.dart';

import '../logic/controller/StatementDetails.dart';
import '../logic/controller/authController.dart';
import 'dashboard.dart';
import 'homePage.dart';

class ProblemStatementDetails extends StatefulWidget {
  ProblemStatementDetails({Key? key}) : super(key: key);

  @override
  State<ProblemStatementDetails> createState() => _ProblemStatementDetailsState();
}

class _ProblemStatementDetailsState extends State<ProblemStatementDetails> with SingleTickerProviderStateMixin {
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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 30),
              child: Column(
                children: [
                  DynamicText(
                    text: '${controller.prodectData!.title}',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                    child: TabBar(
                      controller: _tabController,
                      tabs: [
                        Tab(text: "Description"),
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
      body: Center(child: Text("Review"),),
    );
  }
}


class Collaboration extends StatelessWidget {
  const Collaboration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Review"),),
    );
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
    );
  }
}
