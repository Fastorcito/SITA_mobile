import 'package:flutter/material.dart';

import 'package:flutter_app/pages/login.dart';
import 'package:flutter_app/pages/map_view.dart';
import 'package:flutter_app/pages/map_view_1.dart';
import 'package:flutter_app/pages/registro.dart';
import 'package:flutter_app/pages/registro_1.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(

        body: Login(),
        // body: MapView(),
        // body: MapView1(),
        // body: Registro(),
        // body: Registro1(),

      ),
    );
  }
}
