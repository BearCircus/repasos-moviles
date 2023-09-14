import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String text = '';
  String iconoFeo = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tarea 1'),
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text('BIENVENIDOS', 
              style:  GoogleFonts.pacifico(fontSize: 30, color: Colors.grey),)
            ),
            Image.asset('assets/Dash_Dart_Black.jpg'),
            const SizedBox(height: 30),
            const Text('Seleccione la acción a realizar:',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

            const SizedBox(height: 100),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Pagina 2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Pagina 3'),
                ),
              ],
            ),

            const SizedBox(height: 50),

            Text('Pg.2 => ${text}'),
            
            const SizedBox(height: 50,),
            
            Text('Pg.3 => ${iconoFeo}'),
          ],
        ),
      ),
    );
  }
}

