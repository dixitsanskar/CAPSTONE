import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/logic/controller/authController.dart';
import 'package:mini_project/route/route.dart';
import 'package:mini_project/screen/initialDetails.dart';
import 'package:mini_project/screen/mainlayout.dart';

class LoginScreen extends StatelessWidget {
 LoginScreen({Key? key}) : super(key: key);

      final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          height: 1000,
          width: 1200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Left side
              Expanded(
                child: Container(
                  height: 650,
                  child: Image.asset(
                    'assets/images/login.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Right side
              Expanded(
                child: Container(
                  height: 650,
                  color: Colors.white,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                          fontFamily: "Avenir LT Std",
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff000000),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Add login logic here
                          String username = _usernameController.text;
                          String password = _passwordController.text;
                          // Do something with username and password
                          controller.signInWithEmail(username, password).then((value){
                            print("loggedin");
                               controller.SignedIn();
                               Navigator.of(context).popAndPushNamed(Routes.mainscreen);
                          });

                         
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 10), // Add space between sign-in button and "Don't have an account?" text
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => InitialDetails(),
                          ));
                        },
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
