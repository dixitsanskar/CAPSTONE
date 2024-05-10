

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/service/service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/user.dart';
import '../../util/shared_pref.dart';

class AuthController extends GetxController {

  bool isSignedIn = false;
  FirebaseAuth _auth = FirebaseAuth.instance;
    static const String _keyName = 'name';
  static const String _keyUsername = 'username';
  static const String _keyEmail = 'email';
  static const String _keyPassword = 'password';
  static const String _keyGitLink = 'gitlink';
  static const String _keyLinLink = 'linlink';


  
  @override
  void onInit() async{
    super.onInit();
  }
  final prefs = SharedPrefs.sharedPrefs;
  
  Future<void> signUpWithEmail(String email, String password, String name, String userName, String github_id, String linlink, ) async {
    try {
     await SearchServices.userRegister(name, userName, email, password, github_id, linlink).then((value) async{
    prefs.setString(_keyName, name);
    prefs.setString(_keyUsername, userName);
    prefs.setString(_keyEmail, email);
    prefs.setString(_keyPassword, password);
    prefs.setString(_keyGitLink, github_id);
    prefs.setString(_keyLinLink, linlink);
     });      
    } catch (e) {
      Get.snackbar("Error creating account", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
  
  Future<void> signInWithEmail(String email, String password) async {
    try {
      var result = SearchServices.userLogin(email, password).then((value) {
        if (value!.id !=null)
        {
            prefs.setString(_keyName, value.id ?? "");
        prefs.setString(_keyName, value.name ?? "");
    prefs.setString(_keyUsername, value.username ?? "");
    prefs.setString(_keyEmail, value.email ?? "");
    prefs.setString(_keyGitLink, value.gitlink ?? "");
    prefs.setString(_keyLinLink, value.linlink ?? "");
        }
      });

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

  

}