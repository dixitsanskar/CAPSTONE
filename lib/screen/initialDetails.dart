import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mini_project/screen/homePage.dart';
import 'package:mini_project/screen/mainlayout.dart';
import 'package:mini_project/util/constants.dart';

class initialDetails extends StatelessWidget {
  const initialDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: Stack(
        children: [
          // Blurred background
          MyAppBar(), // Change this to your actual HomePage widget
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
            ),
          ),
          // Centered Container
          Center(
            child: Container(
              width: 200.w,
              height: 500.h,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    blurRadius: 5, // Spread of the shadow
                    offset: Offset(0, 3), // Offset of the shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Enter your Details',
                          style: TextStyle(
                              color: darkColorShade,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Full Name',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                                width: 70.w,
                                height: 37.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(133),
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Enter Your Name",
                                    prefixIcon: Icon(Icons.person),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical:
                                            14.0), // Adjust vertical padding as needed
                                  ),
                                )),

                                SizedBox(height: 10.h,),

                                Text(
                              'Password',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                                width: 70.w,
                                height: 37.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(133),
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Enter Password",
                                    prefixIcon: Icon(Icons.lock),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical:
                                            14.0), // Adjust vertical padding as needed
                                  ),
                                )),

                                SizedBox(height: 15.h,),
                                Text(
                              'Confirm Password',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Container(
                                width: 70.w,
                                height: 37.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(133),
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Enter Confirm Password",
                                    prefixIcon: Icon(Icons.lock),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical:
                                            14.0), // Adjust vertical padding as needed
                                  ),
                                )),

                                
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Work Mail',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                                width: 70.w,
                                height: 37.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(133),
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Enter Your Mail",
                                    prefixIcon: Icon(Icons.mail),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical:
                                            14.0), // Adjust vertical padding as needed
                                  ),
                                )),

                                SizedBox(height: 10.h,),

                                Text(
                              'Github Link',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                                width: 70.w,
                                height: 37.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(133),
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Enter your github link",
                                    prefixIcon: Icon(Icons.link),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical:
                                            14.0), // Adjust vertical padding as needed
                                  ),
                                )),

                                SizedBox(height: 15.h,),
                                Text(
                              'LinkedIn Link',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Container(
                                width: 70.w,
                                height: 37.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(133),
                                  color: Color(0xFFF5F5F5),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Enter your linkedin link",
                                    prefixIcon: Icon(Icons.link),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical:
                                            14.0), // Adjust vertical padding as needed
                                  ),
                                )),

                                
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 70.h,),
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
                        'Create',
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
