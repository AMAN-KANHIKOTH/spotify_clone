import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/home/widgets/albums_list_widget.dart';
import 'package:spotify_clone/presentation/home/widgets/app_bar_widget.dart';
import 'package:spotify_clone/presentation/home/widgets/recent_searches.dart';
import 'package:spotify_clone/presentation/home/widgets/your_favourite_artists.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(preferredSize: size, child: AppBarWidget()),
      body: const SingleChildScrollView(
        child: Column(children: [
          RecentSearches(),
          YourFavouriteArtists(),
          AlbumsListWidget(title: 'Recommended for today'),
          const SizedBox(
            height: 100,
          ),
        ]),
      ),
    );
  }
}
