import 'package:flutter/material.dart';

class IconsSelectionPage extends StatefulWidget {
  const IconsSelectionPage({super.key});

  @override
  State<IconsSelectionPage> createState() => _IconsSelectionPageState();
}

class _IconsSelectionPageState extends State<IconsSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Página 3'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Container(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, '( ,,◕ - ◕,, )');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('( ,,◕ - ◕,, )', style: TextStyle(color: Colors.black),),
                ),
              ),

              Container(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'ʕっ•ᴥ•ʔっ');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('ʕっ•ᴥ•ʔっ', style: TextStyle(color: Colors.black),),
                ),
              ),

              Container(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, '¯\_(ツ)_/¯');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: const Text('¯\_(ツ)_/¯', style: TextStyle(color: Colors.black),),
                ),
              ),    
          ],
        ),
    );
  }
}