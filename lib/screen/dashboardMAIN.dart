import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/route/route.dart';
import 'package:mini_project/util/constants.dart';

import '../Data/collaborationData.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  late String teamName;
  late List teamMembers;

  @override
  Widget build(BuildContext context) {

    teamMembers = [
      'Vishesh', 'Sanskar', 'Tanisha', 'Siddhant'
    ];
    teamName = 'Herobrine';

    return Scaffold(
      // backgroundColor: NormalColorShade,
      body: SingleChildScrollView(
        child: Column(
          children: [

            Wrap(
              alignment: WrapAlignment.start,
              runSpacing: 10,

              children: List.generate(teams.length, (index) =>
                  GestureDetector(
                    onTap: (){Get.toNamed(Routes.collaborationPage, arguments: {'teamName': teams[index]['teamName'], 'teamMembers': teams[index]['teamMembers'],'problemStatement': teams[index]['problemStatement']});},
                    child: CollaborationCard(
                        teamName: teams[index]['teamName'],
                        teamMembers: teams[index]['teamMembers'],
                        ),
                  ),
              ),
            )
          ],
        ),
      ),

    );
  }
}

class CollaborationCard extends StatelessWidget {
  const CollaborationCard({
    super.key,
    required this.teamName,
    required this.teamMembers,
  });

  final String teamName;
  final List teamMembers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Flexible(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.25,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: NormalColorShade,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Team Name : " + teamName,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              ),
              Text("Team Members : ",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: teamMembers.length,
                  itemBuilder: (BuildContext context, int index) {
                return Text("${index+1}. ${teamMembers[index]}");
              } )

            ],
          ),
        ),
      ),
    );
  }
}
