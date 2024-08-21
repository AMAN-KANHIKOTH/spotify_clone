import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key});
  final tabNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10),
      child: ValueListenableBuilder(
        valueListenable: tabNotifier,
        builder: (context, value, child) => Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.greenAccent,
              // radius: 300,
              child: Text('A'),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                tabNotifier.value = 0;
              },
              style: ButtonStyle(
                minimumSize: const WidgetStatePropertyAll(Size(5, 40)),
                fixedSize: const WidgetStatePropertyAll(Size(55, 40)),
                foregroundColor: tabNotifier.value == 0
                    ? const WidgetStatePropertyAll(Colors.black)
                    : const WidgetStatePropertyAll(Colors.white),
                backgroundColor: tabNotifier.value == 0
                    ? const WidgetStatePropertyAll(Colors.green)
                    : const WidgetStatePropertyAll(
                        Color.fromARGB(255, 35, 34, 34)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(0),
                child: Text('All'),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                tabNotifier.value = 1;
              },
              style: tabNotifier.value == 1
                  ? appBarSelectedTheme
                  : appBarUnselectedTheme,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text('Music'),
              ),
            ),
            const SizedBox(width: 10),
            TextButton(
              onPressed: () {
                tabNotifier.value = 2;
              },
              style: tabNotifier.value == 2
                  ? appBarSelectedTheme
                  : appBarUnselectedTheme,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
                child: Text('Podcasts'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
