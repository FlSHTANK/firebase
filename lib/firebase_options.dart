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
    apiKey: 'AIzaSyD066dLZD55hZ5eDumfuAqfrce8L447vrU',
    appId: '1:368690823571:web:24313fc83a45ab3100e866',
    messagingSenderId: '368690823571',
    projectId: 'fir-19654',
    authDomain: 'fir-19654.firebaseapp.com',
    storageBucket: 'fir-19654.firebasestorage.app',
    measurementId: 'G-S5Z3S6HDYK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChR44KyOyM63xi4QOAguweJPuqZ30Hdww',
    appId: '1:368690823571:android:4ee453ee4d43288000e866',
    messagingSenderId: '368690823571',
    projectId: 'fir-19654',
    storageBucket: 'fir-19654.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD9CuFQKbsvRovPlriQwzaA1IhP-61K5eM',
    appId: '1:368690823571:ios:8fdd437d360b83db00e866',
    messagingSenderId: '368690823571',
    projectId: 'fir-19654',
    storageBucket: 'fir-19654.firebasestorage.app',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD9CuFQKbsvRovPlriQwzaA1IhP-61K5eM',
    appId: '1:368690823571:ios:8fdd437d360b83db00e866',
    messagingSenderId: '368690823571',
    projectId: 'fir-19654',
    storageBucket: 'fir-19654.firebasestorage.app',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD066dLZD55hZ5eDumfuAqfrce8L447vrU',
    appId: '1:368690823571:web:d1738f2a2bf8ffb000e866',
    messagingSenderId: '368690823571',
    projectId: 'fir-19654',
    authDomain: 'fir-19654.firebaseapp.com',
    storageBucket: 'fir-19654.firebasestorage.app',
    measurementId: 'G-XQX137SBWY',
  );

}