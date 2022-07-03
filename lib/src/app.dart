import 'package:delisol/src/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.grey.shade900,
          selectionColor: Colors.grey.withOpacity(0.4),
          selectionHandleColor: Colors.grey.withOpacity(0.4),
        ),
      ),
      home: const SplashPage(),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
      },
    );
  }
}
