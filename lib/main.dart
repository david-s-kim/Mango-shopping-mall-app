import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mango_shopping_app/screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
        (_) => runApp(const LoginPage()),
  );
}
