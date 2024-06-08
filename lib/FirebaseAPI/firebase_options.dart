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
    apiKey: 'AIzaSyC0pV4tNwyeMB6bgA1txVhNXjcXHgVcdKM',
    appId: '1:525268102625:web:d4591cee5809fd2dbaf6a0',
    messagingSenderId: '525268102625',
    projectId: 'newlogin-48398',
    authDomain: 'newlogin-48398.firebaseapp.com',
    storageBucket: 'newlogin-48398.appspot.com',
    measurementId: 'G-CYC607E32H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCltzdSc69mDQa_9QUDtGXs1ankEanQ5hQ',
    appId: '1:525268102625:android:6155c183106520a4baf6a0',
    messagingSenderId: '525268102625',
    projectId: 'newlogin-48398',
    storageBucket: 'newlogin-48398.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBtwwNwmSs42Y9MQP7BZxJsjuDEZwMCmzc',
    appId: '1:525268102625:ios:05c9a593037a918dbaf6a0',
    messagingSenderId: '525268102625',
    projectId: 'newlogin-48398',
    storageBucket: 'newlogin-48398.appspot.com',
    androidClientId:
        '525268102625-sgbamn6c0ega06e4gvsuld3363590n13.apps.googleusercontent.com',
    iosClientId:
        '525268102625-03uglpq2e18viuhcspocutirj86m3gia.apps.googleusercontent.com',
    iosBundleId: 'com.example.ioe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBtwwNwmSs42Y9MQP7BZxJsjuDEZwMCmzc',
    appId: '1:525268102625:ios:05c9a593037a918dbaf6a0',
    messagingSenderId: '525268102625',
    projectId: 'newlogin-48398',
    storageBucket: 'newlogin-48398.appspot.com',
    androidClientId:
        '525268102625-sgbamn6c0ega06e4gvsuld3363590n13.apps.googleusercontent.com',
    iosClientId:
        '525268102625-03uglpq2e18viuhcspocutirj86m3gia.apps.googleusercontent.com',
    iosBundleId: 'com.example.ioe',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC0pV4tNwyeMB6bgA1txVhNXjcXHgVcdKM',
    appId: '1:525268102625:web:c89f1211fcd11cadbaf6a0',
    messagingSenderId: '525268102625',
    projectId: 'newlogin-48398',
    authDomain: 'newlogin-48398.firebaseapp.com',
    storageBucket: 'newlogin-48398.appspot.com',
    measurementId: 'G-G7XTKSZQXV',
  );
}
