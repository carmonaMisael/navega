import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tercera Pantalla"),
        backgroundColor: Color(0xffed9478),
      ),
      // Will work
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color(0xffed9478)),
              accountName: Text(
                "Misael Carmona Santana",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "carmoanmisael1@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //const DrawerHeader(
            //decoration: BoxDecoration(
            //color: Colors.deepPurple,
            //),
            //child: Text('Encabezado del drawer'),
            // ),
            ListTile(
              leading: Icon(
                Icons.icecream,
              ),
              title: const Text('Pagina 1'),
              onTap: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/primera');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.icecream_outlined,
              ),
              title: const Text('Pagina 2'),
              onTap: () {
                Navigator.pushNamed(context, '/segunda');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.fire_truck,
              ),
              title: const Text('Pagina 4'),
              onTap: () {
                Navigator.pushNamed(context, '/cuarta');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navega de regreso a la primera pantalla haciendo clic en la ruta actual
            // fuera de la pila
            Navigator.pushNamed(context, '/cuarta');
          },
          child: const Text('Siguiente Pagina'),
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
