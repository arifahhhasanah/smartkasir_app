// Mengimpor pustaka antarmuka Material Design utama dari framework Flutter
import 'package:flutter/material.dart';
// Tambahkan impor halaman Splash Screen
import 'pages/splash_screen_page.dart';

void main() {
  runApp(const SmartKasirApp());
}

class SmartKasirApp extends StatelessWidget {
  const SmartKasirApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartKasir',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 77, 0, 150),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 2,
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
      ),
      // Titik awal aplikasi dibuka pertama kali melalui SplashScreenPage()
      home: const SplashScreenPage(),
    );
  }
}