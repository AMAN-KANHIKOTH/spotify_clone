import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/widgets/app_bar_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(preferredSize: size, child: AppBarWidget()),
      body: const Center(
          child: Text(
        'Home',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
