import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mini_project/Data/collaborationData.dart';
import 'package:mini_project/collab_tools/kanbanBoard.dart';
import 'package:mini_project/model/user.dart';
import 'package:mini_project/screen/callPage.dart';
import 'package:mini_project/screen/constants.dart';
import 'package:mini_project/screen/threads.dart';

class CollaborationPage extends StatefulWidget {
  CollaborationPage({Key? key,}) : super(key: key);

  @override
  State<CollaborationPage> createState() => _CollaborationPageState();
}

class _CollaborationPageState extends State<CollaborationPage> {
  final teamDetails = Get.arguments as Map<String, dynamic>;

  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Capstone',style: TextStyle(color: Colors.white),),
        backgroundColor: darkColorShade,
        leading: IconButton(icon: Icon(Icons.arrow_back_outlined,color: Colors.white,),onPressed: (){Get.back();},),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                   width: MediaQuery.of(context).size.width * 0.6,
                    // height: 538,
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text.rich(
                      TextSpan(
                      children: [
                        TextSpan(
                        text: 'Team Name : ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                                  TextSpan(
                                    text: teamDetails['teamName'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  ],
                                ),
                      ),
                          Text(
                            'Team Members:-',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),


                          ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: teamDetails['teamMembers'].length,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  Icon(Icons.person),
                                  SizedBox(width: 10,),
                                  Text(
                                    teamDetails['teamMembers'][index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  )
                                ],
                              );
                            },
                          )



                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(
                   width: MediaQuery.of(context).size.width * 0.6,
                    // height: 538,
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tools',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),

                          Row(
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        select = 0;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      width: 122,
                                      height: 122,
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
                                      child: Icon(Icons.chat,size: 50,),
                                    ),
                                  ),

                                  Text("Threads",
                                  style: TextStyle(
                                    fontSize: 13
                                  ),)

                                ],
                              ),

                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        select = 0;
                                        Get.to(KanbanBoard());
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      width: 122,
                                      height: 122,
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
                                      child: Icon(Icons.task_outlined,size: 50,),
                                    ),
                                  ),

                                  Text("Task Management",
                                    style: TextStyle(
                                        fontSize: 13
                                    ),)

                                ],
                              ),

                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){

                                      setState(() {
                                        select = 2;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      width: 122,
                                      height: 122,
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
                                      child: Icon(Icons.document_scanner_outlined,size: 50,),
                                    ),
                                  ),

                                  Text("Document Editing",
                                    style: TextStyle(
                                        fontSize: 13
                                    ),)

                                ],
                              ),

                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        select = 3;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      width: 122,
                                      height: 122,
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
                                      child: Icon(Icons.videocam_outlined,size: 50,),
                                    ),
                                  ),

                                  Text("Video Conferenceing",
                                    style: TextStyle(
                                        fontSize: 13,
                                    ),)
                                ],
                              ),


                            ],
                          )

                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
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
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Problem Statement:-',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        Text(teamDetails['problemStatement'])
                        ],
                      ),
                    ),
                  )

                ],
              ),

              Tools(index: select,),


            ],
          ),
        ),
      ),
    );
  }
}

class Tools extends StatelessWidget {
  final int index;

  Tools({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    switch (index) {
      case 0:
        return Threads();
      case 1:
        return Container();
      case 2:
        return Container(
          child: Center(
            child:
            Text(
                "Future Implementation",),),
        ); // Add return statement for case 2
      case 3:
        return CallPage();
      default:
        return Container(); // Return a default widget if index doesn't match any case
    }
  }
}