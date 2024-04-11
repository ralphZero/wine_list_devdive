import 'package:flutter/material.dart';
import 'package:wine_list_devdive/pages/home.dart';

void main() {
  runApp(const WineCollectionApp());
}

class WineCollectionApp extends StatelessWidget {
  const WineCollectionApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
