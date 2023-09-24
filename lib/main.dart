import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('My App')),
        body: Center(
          child: GestureDetector(
            onTap: () {
              const snackBar = SnackBar(content: Text('Tap'));

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(30.0),
              child: const Text('Hello World'),
            ),
          )
        )
    );
  }
}
