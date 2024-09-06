import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key});
  final tabNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 10,
        right: 10,
        bottom: 15,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          CircleAvatar(
            backgroundColor: Colors.greenAccent,
            // radius: 300,
            child: Text('A'),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            'Search',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
        Icon(
          Icons.camera_alt_outlined,
          color: Colors.white,
        )
      ]),
    );
  }
}
