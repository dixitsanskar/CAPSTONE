

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, this.title, this.description, this.author, this.contributor, this.percentage});
  final title;
  final description;
  final author;
  final contributor;
  final percentage;
  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      
      margin: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
      child: Container(
        height: 150,
        width: Get.width * 0.9,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
               Column(
                children: [
                Container(
                  width: Get.width * 0.8,
                  child:  Text(title, 
                   overflow: TextOverflow.ellipsis ,
                   style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),),
                  SizedBox(height: 10,),
            
                 Container(
                   width: Get.width * 0.8,

                  child: Text(description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis ,
                    style: TextStyle(
                    fontSize: 14,
                    
                    //fontWeight: FontWeight.bold,
                  ),
                  ))
                ],
               ),
                SizedBox(width: 20,),
                Text(
                  '$percentage%\n',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Text(
                //   'matched',
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ],
            ),
            
          ],
        ),
      ),

    );
  }
}