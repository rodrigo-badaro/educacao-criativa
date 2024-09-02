import 'package:educacao_criativa/app.dart';
import 'package:educacao_criativa/hive_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';

import 'get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  debugRepaintRainbowEnabled = false;
  WebViewPlatform.instance = WebWebViewPlatform();

  // ignore: prefer_const_constructors
  setUrlStrategy(PathUrlStrategy());
  await setupProviders();
  await HiveConfig.start();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(
    const App(),
  );
}
