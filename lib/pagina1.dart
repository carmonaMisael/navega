import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Pantalla'),
        backgroundColor: Color(0xffed9478),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Siguiente Pagina'),
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.deepOrange,
          ),
          onPressed: () {
            // Navega a la segunda pantalla usando una ruta con nombre
            Navigator.pushNamed(context, '/segunda');
          },
        ),
      ),
    );
  }
}
