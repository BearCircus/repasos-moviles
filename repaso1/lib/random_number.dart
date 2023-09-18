import 'package:flutter/material.dart';

class RandomNumberPage extends StatelessWidget {
  final String? inputValue;

  const RandomNumberPage({Key? key, this.inputValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Number Page"),
      ),
      body: Center(
        child: Text('Entered value: $inputValue'),
      ),
    );
  }
}
