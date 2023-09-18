import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'icons_page.dart';
import 'random_number.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = '';
  String iconoFeo = '';
  String texto = '';

  Future<String?> _showDialog() async {
    String? inputValue;
    return await showDialog<String>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text("Ingrese datos"),
          content: TextField(
            onChanged: (value) {
              inputValue = value;
            },
            decoration: InputDecoration(hintText: "Ingrese palabra"),
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Cancelar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Aceptar"),
              onPressed: () async {
                Navigator.of(context).pop();
                final result = await Navigator.push<String>(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        RandomNumberPage(inputValue: inputValue),
                  ),
                );
                if (result != null) {
                  setState(() {
                    text = result;
                  });
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tarea 1'),
        ),
        body: SingleChildScrollView(
          // <-- Wrap your main content in this
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'BIENVENIDOS',
                    style:
                        GoogleFonts.pacifico(fontSize: 30, color: Colors.grey),
                  )),
              Image.asset('assets/Dash_Dart_Black.jpg'),
              const SizedBox(height: 30),
              const Text(
                'Seleccione la acción a realizar:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _showDialog,
                    child: const Text('Pagina 2'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const IconsSelectionPage(),
                        ),
                      );
                    },
                    child: const Text('Pagina 3'),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Text('Pg.2 => ${text}'),
              const SizedBox(
                height: 50,
              ),
              Text('Pg.3 => ${iconoFeo}'),
            ],
          ),
        ),
      ),
    );
  }
}
