import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/access_code/access_code_bloc.dart';
import 'package:spotify_clone/application/home/home_bloc.dart';
import 'package:spotify_clone/presentation/home/widgets/albums_list_widget.dart';
import 'package:spotify_clone/presentation/home/widgets/app_bar_widget.dart';
import 'package:spotify_clone/presentation/home/widgets/your_favourite_artists.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.getArtists(
          accessCode:
              BlocProvider.of<AccessCodeBloc>(context).state.accessCode));
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.getAlbums(
          accessCode:
              BlocProvider.of<AccessCodeBloc>(context).state.accessCode));
    });
    return Scaffold(
      appBar: PreferredSize(preferredSize: size, child: AppBarWidget()),
      body: SingleChildScrollView(
        child: Column(children: [
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
          AlbumsListWidget(title: 'Recommended for today'),
          const Center(
              child: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          )),
        ]),
      ),
    );
  }
}
