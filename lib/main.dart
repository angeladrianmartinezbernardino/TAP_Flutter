import 'package:flutter/material.dart';
import 'package:topicos/screens/conversor_screen.dart';
import 'package:topicos/screens/dashboard_screen.dart';
import 'package:topicos/screens/intenciones_screen.dart';
import 'package:topicos/screens/splash_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/temp": (context) => const ConversorScreen(),
        "/dash": (context) => const DashboardScreen(),
        "/int": (context) => IntencionesScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
