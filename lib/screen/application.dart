import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../model/user.dart';
import '../route/route.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.7,
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Team Name : ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),

                      Container(
                        width: 200,
                          child: TextField()),

                    ],
                  ),
                  SizedBox(height: 10,),

                  Text(
                    'Member 1 :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.person),
                     Container(
                       width: 200,
                       child: TextField(),
                     ),
                      SizedBox(width: 20,),
                      Icon(Icons.email),
                      Container(
                        width: 200,
                        child: TextField(),
                      ),
                    ],
                  ),

                  Text(
                    'Member 2 :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.person),
                      Container(
                        width: 200,
                        child: TextField(),
                      ),
                      SizedBox(width: 20,),
                      Icon(Icons.email),
                      Container(
                        width: 200,
                        child: TextField(),
                      ),
                    ],
                  ),

                  Text(
                    'Member 3 :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.person),
                      Container(
                        width: 200,
                        child: TextField(),
                      ),
                      SizedBox(width: 20,),
                      Icon(Icons.email),
                      Container(
                        width: 200,
                        child: TextField(),
                      ),
                    ],
                  ),

                  Text(
                    'Member 4 :',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.person),
                      Container(
                        width: 200,
                        child: TextField(),
                      ),
                      SizedBox(width: 20,),
                      Icon(Icons.email),
                      Container(
                        width: 200,
                        child: TextField(),
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
                              Get.back();
                            },
                            child: Text(
                                "Submit"
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
