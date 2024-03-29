import 'package:estate_project/src/features/main_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:estate_project/src/locator.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding _widgetFlutterBinding =
      WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: _widgetFlutterBinding);
  // await dotenv.load(fileName: '.env');
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  setupLocator();
  runApp(ProviderApp(allProviders));
}
