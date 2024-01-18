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
    apiKey: 'AIzaSyClk_mNBztXab1P4Vk6cMKZ_ZAxFtoKWsY',
    appId: '1:138291982711:web:de499ca91f01130ff93172',
    messagingSenderId: '138291982711',
    projectId: 'productivetest-4f656',
    authDomain: 'productivetest-4f656.firebaseapp.com',
    storageBucket: 'productivetest-4f656.appspot.com',
    measurementId: 'G-LV3EBP09FE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAG4xuqBg1gUcfOoYUer76PJz4wsy9Y7ic',
    appId: '1:138291982711:android:346c806cbc19eec7f93172',
    messagingSenderId: '138291982711',
    projectId: 'productivetest-4f656',
    storageBucket: 'productivetest-4f656.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADIxLF1ADI9KF43PwvxDBiFkm7r3VGCEE',
    appId: '1:138291982711:ios:7c707fc422548767f93172',
    messagingSenderId: '138291982711',
    projectId: 'productivetest-4f656',
    storageBucket: 'productivetest-4f656.appspot.com',
    iosBundleId: 'com.example.productive',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyADIxLF1ADI9KF43PwvxDBiFkm7r3VGCEE',
    appId: '1:138291982711:ios:7f582468cb03c5c6f93172',
    messagingSenderId: '138291982711',
    projectId: 'productivetest-4f656',
    storageBucket: 'productivetest-4f656.appspot.com',
    iosBundleId: 'com.example.productive.RunnerTests',
  );
}
