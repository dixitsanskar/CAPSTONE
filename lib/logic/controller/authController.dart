

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/user.dart';

class AuthController extends GetxController {

  bool isSignedIn = false;
  FirebaseAuth _auth = FirebaseAuth.instance;



  
  @override
  void onInit() {
    super.onInit();
  }
  
  Future<void> signUpWithEmail(String email, String password, String name, String userName, String github_id) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      ).then((value)async{
        Users usr  = Users(
          id: '${_auth.currentUser!.uid}',
          name : '${name.trim()}',
          userName: '${userName.trim()}',
          github_id: '${github_id.trim()}',
          resume: '',
          collab_id: [],
          
        );
        var map = usr.tomap();
        try {
          await FirebaseFirestore.instance.collection('Users').doc(_auth.currentUser!.uid).set(map).then((value) => GetSnackBar(title: 'Registration Successful',message: 'Account Created Successfully', borderColor: Colors.green ,));
        }
        catch(e){
            GetSnackBar(title: 'Registration UnSuccessful',message: 'Error Occurred', borderColor: Colors.red,);
        }

      });
    } catch (e) {
      Get.snackbar("Error creating account", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
  
  Future<void> signInWithEmail(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
    } catch (e) {
      Get.snackbar("Error signing in", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
  
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> updateUserDetails(String displayName, String photoURL) async {
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        await user.updateProfile(displayName: displayName, photoURL: photoURL);
        await user.reload();
        user = _auth.currentUser;
        // Update user details in Firestore if needed
        FirebaseFirestore.instance.collection('users').doc(user!.uid).set({
          'displayName': user.displayName,
          'email': user.email,
          'photoURL': user.photoURL,
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

}