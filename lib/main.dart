import 'package:finance_app/pages/home_page.dart';
import 'package:finance_app/pages/info_page.dart';
import 'package:finance_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.black, background: Colors.black87),
          fontFamily: GoogleFonts.poppins().fontFamily,
          textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white),
              bodySmall: TextStyle(color: Colors.white)),
          useMaterial3: true,
        ),
        home: const SafeArea(child: LoginPage()),
        routes: {
          '/home': (context) => const SafeArea(child: HomePage()),
          '/info': (context) => const SafeArea(child: InfoPage())
        });
  }
}
