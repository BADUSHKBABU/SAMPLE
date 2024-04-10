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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyD8hdT8OuZyY9EhBSc4fcNIJv9EUUGmr3Y',
    appId: '1:1054655475289:web:314dca3dc774d5f1760b48',
    messagingSenderId: '1054655475289',
    projectId: 'sample-work-841d3',
    authDomain: 'sample-work-841d3.firebaseapp.com',
    storageBucket: 'sample-work-841d3.appspot.com',
    measurementId: 'G-XJ6X6W3W81',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHVA0rii7YVZogNLEpHx9_RAwbdpiU--A',
    appId: '1:1054655475289:android:a875bcb1ae81e1f7760b48',
    messagingSenderId: '1054655475289',
    projectId: 'sample-work-841d3',
    storageBucket: 'sample-work-841d3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAYHlq4Uxsa52SXjg4Pq0ZJtRd-xFqOieU',
    appId: '1:1054655475289:ios:4ac915928ecc7d8a760b48',
    messagingSenderId: '1054655475289',
    projectId: 'sample-work-841d3',
    storageBucket: 'sample-work-841d3.appspot.com',
    iosBundleId: 'com.example.sample',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAYHlq4Uxsa52SXjg4Pq0ZJtRd-xFqOieU',
    appId: '1:1054655475289:ios:e71ca2f695b30559760b48',
    messagingSenderId: '1054655475289',
    projectId: 'sample-work-841d3',
    storageBucket: 'sample-work-841d3.appspot.com',
    iosBundleId: 'com.example.sample.RunnerTests',
  );
}