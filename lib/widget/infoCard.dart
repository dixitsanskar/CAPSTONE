

import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, this.title, this.description, this.author, this.contributor});
  final title;
  final description;
  final author;
  final contributor;
  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      
      margin: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
               Column(
                children: [
                  Text(title, 
                  softWrap: true,
                   style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
            
                  Text(description,
                  softWrap: true,
                    style: TextStyle(
                    fontSize: 14,
                    
                    //fontWeight: FontWeight.bold,
                  ),
                  )
                ],
               ),
                Spacer(),
                Text(
                  'Date',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),

    );
  }
}