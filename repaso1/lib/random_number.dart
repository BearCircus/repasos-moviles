import 'dart:math';
import 'package:flutter/material.dart';

class RandomNumberPage extends StatefulWidget {
  final String? inputValue;

  const RandomNumberPage({Key? key, this.inputValue}) : super(key: key);

  @override
  State<RandomNumberPage> createState() => _RandomNumberPageState();
}

class _RandomNumberPageState extends State<RandomNumberPage> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página 2"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 70, 168, 248),
              Color.fromARGB(255, 176, 224, 247),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 20.0),
                child: Text(
                  'Genere número random',
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),

              // Text('Entered value: ${widget.inputValue}'),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${value}',
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  value = Random().nextInt(999);
                  setState(() {});
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                child: const Text(
                  'Generar',
                  style: TextStyle(color: Colors.black),
                ),
              ),

              ElevatedButton(
                onPressed: () {
                String? inputValue = '${widget.inputValue}$value';
                  
                  Navigator.pop(context, inputValue);
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                child: const Text('Guardar',
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
