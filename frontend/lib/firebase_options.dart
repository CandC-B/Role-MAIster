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
    apiKey: 'AIzaSyBlCqY_DC8cgxstDk0XdsVR37y1z1F1iSk',
    appId: '1:146527793374:web:6577d87ac153726032d24f',
    messagingSenderId: '146527793374',
    projectId: 'role-maister',
    authDomain: 'role-maister.firebaseapp.com',
    storageBucket: 'role-maister.appspot.com',
    measurementId: 'G-57QEB0SK80',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3xwHCqI_jDsrFbJNCapqplws5TdU0HFE',
    appId: '1:146527793374:android:5bcbe4ac8b95ed5332d24f',
    messagingSenderId: '146527793374',
    projectId: 'role-maister',
    storageBucket: 'role-maister.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDg-ThlqQBsqyK2R9VORYcimH7OTL0DfIA',
    appId: '1:146527793374:ios:283974810ae43f9932d24f',
    messagingSenderId: '146527793374',
    projectId: 'role-maister',
    storageBucket: 'role-maister.appspot.com',
    iosBundleId: 'com.candc.roleMaister',
  );
}
