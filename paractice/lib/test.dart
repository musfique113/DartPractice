import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String text = 'Your text here';
  final int shift = 3;

  @override
  Widget build(BuildContext context) {
    String plainText = '';

    for (int i = 0; i < text.length; i++) {
      String char = text[i];

      if (RegExp(r'[A-Za-z]').hasMatch(char)) {
        String char = text[i].toUpperCase();
        String plainChar =
            String.fromCharCode((char.codeUnitAt(0) - 65 - shift) % 26 + 65);
        plainText += plainChar;
      } else {
        plainText += text[i];
        _showErrorSnackbar(context);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text(plainText),
      ),
    );
  }

  void _showErrorSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error: Non-alphabet character encountered!'),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
