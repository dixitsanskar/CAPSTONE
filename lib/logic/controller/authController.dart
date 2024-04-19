

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {

  bool isSignedIn = false;
  // FirebaseAuth _auth = FirebaseAuth.instance;
  // late Rx<User?> firebaseUser ;
  //
  // @override
  // void onInit() {
  //   super.onInit();
  //   firebaseUser.bindStream(_auth.authStateChanges());
  // }
  //
  // Future<void> signUpWithEmail(String email, String password) async {
  //   try {
  //     await _auth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //   } catch (e) {
  //     Get.snackbar("Error creating account", e.toString(),
  //         snackPosition: SnackPosition.BOTTOM);
  //   }
  // }
  //
  // Future<void> signInWithEmail(String email, String password) async {
  //   try {
  //     await _auth.signInWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //   } catch (e) {
  //     Get.snackbar("Error signing in", e.toString(),
  //         snackPosition: SnackPosition.BOTTOM);
  //   }
  // }
  //
  // Future<void> signOut() async {
  //   try {
  //     await _auth.signOut();
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  // Future<void> updateUserDetails(String displayName, String photoURL) async {
  //   try {
  //     User? user = _auth.currentUser;
  //     if (user != null) {
  //       await user.updateProfile(displayName: displayName, photoURL: photoURL);
  //       await user.reload();
  //       user = _auth.currentUser;
  //       // Update user details in Firestore if needed
  //       FirebaseFirestore.instance.collection('users').doc(user!.uid).set({
  //         'displayName': user.displayName,
  //         'email': user.email,
  //         'photoURL': user.photoURL,
  //       });
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

}