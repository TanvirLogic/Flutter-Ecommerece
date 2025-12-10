// initial Set up

// 1. Folder Structure
// 2. Firebase set up
// 3. Firebase crashlytics
// 4. Firebase analytics
// 5. Localization ( English , Bangla )
// 6. Theme
// 7. Routing
// 8. Network Caller

import 'dart:async';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:insta_buy_app/app/app.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter initial
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Firebase initial
  await Firebase.initializeApp();
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  }; // CrashLytic Initial
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  }; // CrashLytic Initial
  runApp(InstaBuyApp());
}
