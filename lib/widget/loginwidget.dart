// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mini_project/logic/controller/authController.dart';
// import 'package:mini_project/route/route.dart';

// class RegistrationPopup extends StatelessWidget {

//   var controller = Get.put(AuthController());

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       child: contentBox(context),
//     );
//   }

//   Widget contentBox(BuildContext context, ) {
//     TextEditingController name = new TextEditingController();
//     TextEditingController email = new TextEditingController();
//     TextEditingController password = new TextEditingController();
//     TextEditingController userName = new TextEditingController();
//     TextEditingController github_link = new TextEditingController();
//     var controller = Get.put(AuthController());


//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).pop(); // Close the popup when tapped outside
//       },
//       child: Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16),
//         ),
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         child: Stack(
//           children: <Widget>[
//             Container(
//               width: MediaQuery.of(context).size.width * 0.4, // Set the width here
//               padding: EdgeInsets.all(20),
//               margin: EdgeInsets.only(top: 45),
//               decoration: BoxDecoration(
//                 shape: BoxShape.rectangle,
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black,
//                     offset: Offset(0, 10),
//                     blurRadius: 10,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Text(
//                     "Registration",
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   TextFormField(
//                     controller: name,
//                     decoration: InputDecoration(
//                       labelText: "Name",
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   TextFormField(
//                     controller: email,
//                     decoration: InputDecoration(
//                       labelText: "Email",
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   TextFormField(
//                     controller: userName ,
//                     decoration: InputDecoration(
//                       labelText: "User Name",
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   TextFormField(
//                     controller: github_link ,
//                     decoration: InputDecoration(
//                       labelText: "Github link",
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   TextFormField(
//                     controller:  password ,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       labelText: "Password",
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 22),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: ElevatedButton(
//                       onPressed: () {
//                        controller.signUpWithEmail(email.text.trim(), password.text.trim(), name.text.trim() , userName.text.trim() , github_link.text.trim(),  ).then((value) {
//                         Navigator.of(context).pop();
//                         GetSnackBar(title: 'Sign up successfull',);
//                        });
//                       },
//                       child: Text(
//                         "Register",
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               left: 20,
//               top: 50,
//               child: IconButton(
//                 icon: Icon(Icons.close),
//                 onPressed: () {
//                   Navigator.of(context).pop; // Close the popup when close button is pressed
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class LoginPopup extends StatelessWidget {
//   final controller = Get.put(AuthController());
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//       elevation: 0,
//       backgroundColor: Colors.transparent,
//       child: contentBox(context),
//     );
//   }

//   Widget contentBox(BuildContext context) {
//     TextEditingController email = new TextEditingController();
//     TextEditingController password = new TextEditingController();
//     var controller = Get.put(AuthController());


//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).pop(); // Close the popup when tapped outside
//       },
//       child: Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(16),
//         ),
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         child: Stack(
//           children: <Widget>[
//             Container(
//               width: MediaQuery.of(context).size.width * 0.4, // Set the width here
//               padding: EdgeInsets.all(20),
//               margin: EdgeInsets.only(top: 45),
//               decoration: BoxDecoration(
//                 shape: BoxShape.rectangle,
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black,
//                     offset: Offset(0, 10),
//                     blurRadius: 10,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Text(
//                     "Login",
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   TextFormField(
//                     controller: email,
//                     decoration: InputDecoration(
//                       labelText: "Email",
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   TextFormField(
//                     controller: password,
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       labelText: "Password",
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                   SizedBox(height: 22),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {
//                             showRegistrationPopup(context);
//                           },
//                           child: Text(
//                             "Sign Up",
//                             style: TextStyle(fontSize: 18),
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         ElevatedButton(
//                           onPressed: () {
//                             // Add login logic here
//                             controller.signInWithEmail(email.text.trim(), password.text.trim() ).then((value) {
//                               Navigator.of(context).pop();
//                               GetSnackBar(title: 'Login Successfull',);
                              
//                             });
//                           },
//                           child: Text(
//                             "Login",
//                             style: TextStyle(fontSize: 18),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               left: 20,
//               top: 50,
//               child: IconButton(
//                 icon: Icon(Icons.close),
//                 onPressed: () {
//                   Navigator.of(context).pop(); // Close the popup when close button is pressed
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void showRegistrationPopup(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return Stack(
//         children: [
//           // Blurred background
//           BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//             child: Container(
//               color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//             ),
//           ),
//           // Registration popup
//           Center(
//             child: RegistrationPopup(),
//           ),
//         ],
//       );
//     },
//   );
// }

// void showLoginPopup(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return Stack(
//         children: [
//           // Blurred background
//           BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
//             child: Container(
//               color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//             ),
//           ),
//           // Login popup
//           Center(
//             child: LoginPopup(),
//           ),
//         ],
//       );
//     },
//   );
// }
