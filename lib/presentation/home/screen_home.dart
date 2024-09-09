import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/home/home_bloc.dart';
import 'package:spotify_clone/application/main/access_code_bloc.dart';
import 'package:spotify_clone/presentation/home/widgets/albums_list_widget.dart';
import 'package:spotify_clone/presentation/home/widgets/app_bar_widget.dart';
import 'package:spotify_clone/presentation/home/widgets/on_recent_searches.dart';
import 'package:spotify_clone/presentation/home/widgets/recent_searches.dart';
import 'package:spotify_clone/presentation/home/widgets/your_favourite_artists.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return RefreshIndicator(
      onRefresh: () {
        BlocProvider.of<HomeBloc>(context).add(HomeEvent.getArtists(
            accessCode:
                BlocProvider.of<AccessCodeBloc>(context).state.accessCode));
        return Future<void>.delayed(const Duration(seconds: 1));
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          switch (state.currentState) {
            case HomeScreenState.home:
              return Scaffold(
                appBar:
                    PreferredSize(preferredSize: size, child: AppBarWidget()),
                body: const SingleChildScrollView(
                  child: Column(children: [
                    RecentSearches(),
                    SizedBox(height: 10),
                    YourFavouriteArtists(),
                    AlbumsListWidget(title: 'Recommended for today'),
                    const SizedBox(
                      height: 100,
                    ),
                  ]),
                ),
              );
            case HomeScreenState.recentSearches:
              return const OnRecentSearches();
            case HomeScreenState.favArtist:
            case HomeScreenState.album:
            default:
              return Scaffold(
                appBar:
                    PreferredSize(preferredSize: size, child: AppBarWidget()),
                body: const SingleChildScrollView(
                  child: Column(children: [
                    RecentSearches(),
                    SizedBox(height: 10),
                    YourFavouriteArtists(),
                    AlbumsListWidget(title: 'Recommended for today'),
                    const SizedBox(
                      height: 100,
                    ),
                  ]),
                ),
              );
          }
        },
      ),
    );
  }
}
