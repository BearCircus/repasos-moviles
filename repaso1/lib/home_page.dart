import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tarea 1'),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Text('BIENVENIDOS', style:  GoogleFonts.pacifico(fontSize: 30, color: Colors.grey),)
          ),
      ),
    );
  }
}

