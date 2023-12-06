import 'package:finance_app/pages/favorites_page.dart';
import 'package:finance_app/pages/home_page.dart';
import 'package:finance_app/pages/info_page.dart';
import 'package:finance_app/pages/login_page.dart';
import 'package:finance_app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://fkmurbgvolitypveppdp.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZrbXVyYmd2b2xpdHlwdmVwcGRwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDE3NTE3MTQsImV4cCI6MjAxNzMyNzcxNH0.AnaC4lwV2rsZ7kCEfI3a_rx8aKF7DM1975OkgIVvic0',
  );

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
          '/info': (context) => const SafeArea(child: InfoPage()),
          '/favorites': (context) => const SafeArea(child: FavoritesPage()),
          '/register': (context) => SafeArea(child: RegisterPage()),
        });
  }
}
