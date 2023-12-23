

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/StatementDetails.dart';

class ProblemStatementDetails extends StatelessWidget {
   ProblemStatementDetails({super.key, this.title, this.description, this.author, this.contributor, });
    final title;
  final description;
  final author;
  final contributor;
  final controller = Get.put(DetailsController());

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
              // image: DecorationImage(
              //  // image: AssetImage('assets/images/ps1.jpg'),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: Text('$title' , style: TextStyle(color: Colors.white), ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 250),
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [

                
              ],
            ),
          ),
          
        ],
      ),

    );
  }
}