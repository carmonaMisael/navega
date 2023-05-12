// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:carmona/pagina1.dart';

class Pantalla4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.icecream)),
                Tab(icon: Icon(Icons.contact_mail)),
                Tab(icon: Icon(Icons.person)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.icecream),
              Icon(Icons.contact_mail),
              Icon(Icons.person),
            ],
          ),
        ),
      ),
    );
  }
}
