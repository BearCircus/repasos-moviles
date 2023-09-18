import 'package:flutter/material.dart';

class IconsSelectionPage extends StatefulWidget {
  const IconsSelectionPage({super.key});

  @override
  State<IconsSelectionPage> createState() => _IconsSelectionPageState();
}

class _IconsSelectionPageState extends State<IconsSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}