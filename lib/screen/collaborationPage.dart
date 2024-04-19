import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mini_project/Data/collaborationData.dart';
import 'package:mini_project/model/user.dart';

class CollaborationPage extends StatelessWidget {
  CollaborationPage({Key? key,}) : super(key: key);

  final teamDetails = Get.arguments as Map<String, dynamic>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                   width: MediaQuery.of(context).size.width * 0.6,
                    // height: 538,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
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
                      color: Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
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
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    width: 122,
                                    height: 122,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFA0A0A0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: Icon(Icons.chat,size: 50,),
                                  ),

                                  Text("Threads",
                                  style: TextStyle(
                                    fontSize: 13
                                  ),)

                                ],
                              ),

                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    width: 122,
                                    height: 122,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFA0A0A0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: Icon(Icons.task_outlined,size: 50,),
                                  ),

                                  Text("Task Management",
                                    style: TextStyle(
                                        fontSize: 13
                                    ),)

                                ],
                              ),

                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    width: 122,
                                    height: 122,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFA0A0A0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: Icon(Icons.document_scanner_outlined,size: 50,),
                                  ),

                                  Text("Document Editing",
                                    style: TextStyle(
                                        fontSize: 13
                                    ),)

                                ],
                              ),

                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    width: 122,
                                    height: 122,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFA0A0A0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: Icon(Icons.videocam_outlined,size: 50,),
                                  ),

                                  Text("Video Conferenceing",
                                    style: TextStyle(
                                        fontSize: 13
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
                      color: Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
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

              Tools()


            ],
          ),
        ),
      ),
    );
  }
}

class Tools extends StatelessWidget {
  Tools({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: ShapeDecoration(
        color: Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}
