import 'package:flutter/material.dart';
import 'package:topicos/screens/login_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar a la pantalla de inicio de sesión
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InicioSesion()),
            );
          },
          child: Text('Iniciar Sesión'),
        ),
      ),
    );
  }
}
