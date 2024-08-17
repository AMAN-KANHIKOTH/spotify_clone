import 'package:flutter/material.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80),
          child: SizedBox(
            width: double.infinity,
            child: Image.network(
              fit: BoxFit.fill,
              'https://wallpapers.com/images/high/spotify-logo-green-black-background-5v7offa5l6swt0xc.png',
            ),
          ),
        ),
      ),
    );
  }
}
