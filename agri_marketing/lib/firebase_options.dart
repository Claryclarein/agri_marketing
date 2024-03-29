// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBzXlPuDW0oLEraAI2YkrpvsEcMkL0_QJg',
    appId: '1:477848713046:web:72366ab3110da83137c8f7',
    messagingSenderId: '477848713046',
    projectId: 'agriseeds-marketing',
    authDomain: 'agriseeds-marketing.firebaseapp.com',
    storageBucket: 'agriseeds-marketing.appspot.com',
    measurementId: 'G-TYJMDKJVMN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCc4ZWjumVcexTcHR6Th1khL7ikMCJoryE',
    appId: '1:477848713046:android:b8ed8b475fe196e737c8f7',
    messagingSenderId: '477848713046',
    projectId: 'agriseeds-marketing',
    storageBucket: 'agriseeds-marketing.appspot.com',
  );
}
