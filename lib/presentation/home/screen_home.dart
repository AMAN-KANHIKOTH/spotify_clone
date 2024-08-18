import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/home/widgets/your_favourite_artists.dart';
import 'package:spotify_clone/presentation/widgets/app_bar_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(preferredSize: size, child: AppBarWidget()),
      body: Column(children: [
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
          ),
          childAspectRatio: 3,
          mainAxisSpacing: 7,
          crossAxisSpacing: 5,
          children: List.generate(
            6,
            (index) => Container(
              width: double.infinity,
              color: Colors.accents[index],
              child: Row(
                children: [
                  //Image.network(),
                  Text('data'),
                ],
              ),
            ),
          ),
        ),
        YourFavouriteArtists(),
        const Center(
            child: Text(
          'Home',
          style: TextStyle(color: Colors.white),
        )),
      ]),
    );
  }
}
