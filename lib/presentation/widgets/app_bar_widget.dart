import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.greenAccent,
            // radius: 300,
            child: Text('A'),
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: () {},
            style: const ButtonStyle(
              minimumSize: WidgetStatePropertyAll(Size(5, 40)),
              fixedSize: WidgetStatePropertyAll(Size(55, 40)),
              foregroundColor: WidgetStatePropertyAll(Colors.black),
              backgroundColor: WidgetStatePropertyAll(Colors.green),
            ),
            child: const Padding(
              padding: EdgeInsets.all(0),
              child: Text('All'),
            ),
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: () {},
            style: appBarSelectedTheme,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text('Music'),
            ),
          ),
          const SizedBox(width: 10),
          TextButton(
            onPressed: () {},
            style: appBarSelectedTheme,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Text('Podcasts'),
            ),
          )
        ],
      ),
    );
  }
}
