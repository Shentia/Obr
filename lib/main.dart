import 'package:blog/colors.dart';
import 'package:blog/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CIBC OBR',
      theme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
        useMaterial3: true,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72.0,
          ),
          titleLarge: TextStyle(
            fontSize: 36.0,
          ),
          titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w100),
          bodyMedium: TextStyle(
            fontSize: 14.0,
          ),
          displayMedium: TextStyle(
            fontSize: 24.0,
          ),
          displaySmall: TextStyle(
            fontSize: 18.0,
          ),
          headlineMedium: TextStyle(
            fontSize: 16.0,
          ),
          headlineSmall: TextStyle(fontSize: 14.0),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
