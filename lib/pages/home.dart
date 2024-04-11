import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wine Collection'),
        centerTitle: false,
      ),
      body: Container(
        padding: const EdgeInsets.all(18.0),
        color: Colors.black,
        child: Row(
          children: [
            const Text(
              'Red Wines',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            Image.asset('./assets/wine.svg'),
          ],
        ),
      ),
    );
  }
}
