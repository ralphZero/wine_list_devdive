import 'package:flutter/material.dart';

class WineBanner extends StatelessWidget {
  const WineBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Red Wines',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          Image.asset(
            'assets/wine.png',
            width: 24,
          ),
        ],
      ),
    );
  }
}
