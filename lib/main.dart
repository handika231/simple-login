import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_login/app_widget.dart';
import 'package:simple_login/injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  initLocator();
  runApp(const AppWidget());
}
