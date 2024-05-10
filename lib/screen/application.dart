import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mini_project/util/constants.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Enter your team details',
          style: TextStyle(
            fontSize: 22,
            color: darkColorShade,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 900,
          height: 665,
          decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
          child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Team Name',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox(
                        width: 350,
                        height: 26,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Enter your team name',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            contentPadding: EdgeInsets.all(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Team Leader',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            width: 350,
                            height: 26,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'John Doe',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                contentPadding: EdgeInsets.all(2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            width: 350,
                            height: 26,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'JohnDoe@gmail.com',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                contentPadding: EdgeInsets.all(2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Text(
                          //   'Phone Number',
                          //   style: TextStyle(
                          //     fontSize: 13,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 4,
                          // ),
                          // SizedBox(
                          //   width: 350,
                          //   height: 26,
                          //   child: TextFormField(
                          //     decoration: InputDecoration(
                          //       fillColor: Colors.white,
                          //       filled: true,
                          //       hintText: '+91 0000000000',
                          //       border: OutlineInputBorder(
                          //         borderSide: BorderSide.none,
                          //         borderRadius: BorderRadius.circular(2.0),
                          //       ),
                          //       contentPadding: EdgeInsets.all(2),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Member 3',
                            style: TextStyle(
                                color: darkColorShade,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            width: 350,
                            height: 26,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'John Doe',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                contentPadding: EdgeInsets.all(2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            width: 350,
                            height: 26,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'JohnDoe@gmail.com',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                contentPadding: EdgeInsets.all(2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Text(
                          //   'Phone Number',
                          //   style: TextStyle(
                          //     fontSize: 13,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 4,
                          // ),
                          // SizedBox(
                          //   width: 350,
                          //   height: 26,
                          //   child: TextFormField(
                          //     decoration: InputDecoration(
                          //       fillColor: Colors.white,
                          //       filled: true,
                          //       hintText: '+91 0000000000',
                          //       border: OutlineInputBorder(
                          //         borderSide: BorderSide.none,
                          //         borderRadius: BorderRadius.circular(2.0),
                          //       ),
                          //       contentPadding: EdgeInsets.all(2),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Member 2',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            width: 350,
                            height: 26,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'John Doe',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                contentPadding: EdgeInsets.all(2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            width: 350,
                            height: 26,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'JohnDoe@gmail.com',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                contentPadding: EdgeInsets.all(2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Text(
                          //   'Phone Number',
                          //   style: TextStyle(
                          //     fontSize: 13,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 4,
                          // ),
                          // SizedBox(
                          //   width: 350,
                          //   height: 26,
                          //   child: TextFormField(
                          //     decoration: InputDecoration(
                          //       fillColor: Colors.white,
                          //       filled: true,
                          //       hintText: '+91 0000000000',
                          //       border: OutlineInputBorder(
                          //         borderSide: BorderSide.none,
                          //         borderRadius: BorderRadius.circular(2.0),
                          //       ),
                          //       contentPadding: EdgeInsets.all(2),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Member 4',
                            style: TextStyle(
                                color: darkColorShade,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            width: 350,
                            height: 26,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'John Doe',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                contentPadding: EdgeInsets.all(2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          SizedBox(
                            width: 350,
                            height: 26,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'JohnDoe@gmail.com',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                contentPadding: EdgeInsets.all(2),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Text(
                          //   'Phone Number',
                          //   style: TextStyle(
                          //     fontSize: 13,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 4,
                          // ),
                          // SizedBox(
                          //   width: 350,
                          //   height: 26,
                          //   child: TextFormField(
                          //     decoration: InputDecoration(
                          //       fillColor: Colors.white,
                          //       filled: true,
                          //       hintText: '+91 0000000000',
                          //       border: OutlineInputBorder(
                          //         borderSide: BorderSide.none,
                          //         borderRadius: BorderRadius.circular(2.0),
                          //       ),
                          //       contentPadding: EdgeInsets.all(2),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Container(
                    width: 360,
                    height: 35,
                    decoration: ShapeDecoration(
                      color: Color(0xFF0A2351),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Center(
                      child: Text(
                        'Submit Details',
                        style: TextStyle(
                          color: Color(0xFFC8C8D0),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ))
                ],
              )),
        ),
      ),
    );
  }
}
