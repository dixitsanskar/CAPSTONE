// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCEzLsnmkvKqeUBN_18an1DZ3m7EOUqYoI',
    appId: '1:429216916494:web:018c2f92fccf2b27a1085f',
    messagingSenderId: '429216916494',
    projectId: 'capstone-ffe40',
    authDomain: 'capstone-ffe40.firebaseapp.com',
    storageBucket: 'capstone-ffe40.appspot.com',
    measurementId: 'G-JRLVLMBYT1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAR8k_kOePkOgiFjp2aDaWB_RPkx87M7Wg',
    appId: '1:429216916494:android:0268fb7f7f572f01a1085f',
    messagingSenderId: '429216916494',
    projectId: 'capstone-ffe40',
    storageBucket: 'capstone-ffe40.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDoRmKl0SkCJp8RJs3k9mkc7BMpfgjPn3M',
    appId: '1:429216916494:ios:4427bffefcc47e63a1085f',
    messagingSenderId: '429216916494',
    projectId: 'capstone-ffe40',
    storageBucket: 'capstone-ffe40.appspot.com',
    iosBundleId: 'com.example.miniProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDoRmKl0SkCJp8RJs3k9mkc7BMpfgjPn3M',
    appId: '1:429216916494:ios:4427bffefcc47e63a1085f',
    messagingSenderId: '429216916494',
    projectId: 'capstone-ffe40',
    storageBucket: 'capstone-ffe40.appspot.com',
    iosBundleId: 'com.example.miniProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCEzLsnmkvKqeUBN_18an1DZ3m7EOUqYoI',
    appId: '1:429216916494:web:9d4790d387873307a1085f',
    messagingSenderId: '429216916494',
    projectId: 'capstone-ffe40',
    authDomain: 'capstone-ffe40.firebaseapp.com',
    storageBucket: 'capstone-ffe40.appspot.com',
    measurementId: 'G-8KY35JB60Z',
  );
}