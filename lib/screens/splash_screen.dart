import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:topicos/screens/login_screen.dart';

class PantallaCarga extends StatefulWidget {
  const PantallaCarga({super.key});

  @override
  State<PantallaCarga> createState() => _PantallaCargaState();
}

class _PantallaCargaState extends State<PantallaCarga> {
  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.gif(
      gifPath: 'assets/loading_splash.gif',
      gifWidth: 400,
      gifHeight: MediaQuery.of(context).size.height,
      duration: const Duration(milliseconds: 3000),
      nextScreen: const InicioSesion(),
    );
  }
}
