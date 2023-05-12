import 'package:flutter/material.dart';
import 'package:carmona/pagina1.dart';
import 'package:carmona/pagina2.dart';
import 'package:carmona/pagina3.dart';
import 'package:carmona/pagina4.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Named Routes Demo',
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/primera',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/primera': (context) => const Pantalla1(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/segunda': (context) => const Pantalla2(),
      '/tercera': (context) => const Pantalla3(),
      '/cuarta': (context) => Pantalla4(),
    },
  ));
}
