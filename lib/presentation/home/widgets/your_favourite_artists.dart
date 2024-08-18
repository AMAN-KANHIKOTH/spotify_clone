import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class YourFavouriteArtists extends StatelessWidget {
  const YourFavouriteArtists({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your favourite artists',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: size.height * 0.225,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: List.generate(
              5,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    CircleAvatar(
                      minRadius: 80,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Artist Name',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
