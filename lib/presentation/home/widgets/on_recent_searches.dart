import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/home/home_bloc.dart';
import 'package:spotify_clone/application/main/access_code_bloc.dart';

class OnRecentSearches extends StatelessWidget {
  const OnRecentSearches({super.key});

  @override
  Widget build(BuildContext context) {
    var state = BlocProvider.of<HomeBloc>(context).state;
    String artistIds = '';
    final data = state.recentSearch;
    for (var artist in data.artists!) {
      if (artist == data.artists!.last) {
        artistIds += artist.id!;
      } else {
        artistIds += '${artist.id},';
      }
    }
    BlocProvider.of<HomeBloc>(context).add(GetArtists(
      accessCode: BlocProvider.of<AccessCodeBloc>(context).state.accessCode,
      artistId: artistIds,
    ));
    final artist = state.favList;
    log(artist.first.name!);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.cyan,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.network(
                        data.images![0].url!,
                        width: 220,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Album Title
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 3,
                            ),
                            child: Text(
                              data.name!,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          // Artists
                          Row(
                            children: [
                              data.artists!.length == 1
                                  ? CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          artist.first.images![0].url!),
                                    )
                                  : Container(
                                      height: 40,
                                      width: 100,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 10,
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  artist.first.images![0].url!),
                                            ),
                                          ),
                                          Positioned(
                                            left: 40,
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  artist.last.images![0].url!),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                            ],
                          ),
                          //Type With Year
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              '${data.type!.replaceFirst(data.type!.characters.first, data.type!.characters.first.toUpperCase())}  ${data.releaseDate!.split('-').first}',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          // Icons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add_circle_outline),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.arrow_circle_down),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.more_vert))
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.play_circle,
                                      size: 50,
                                      color: Colors.greenAccent[400],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 7,
            left: 7,
            child: IconButton(
                onPressed: () {
                  BlocProvider.of<HomeBloc>(context).add(
                    const ChangeHomeScreenState(
                        homeScreenState: HomeScreenState.home),
                  );
                  BlocProvider.of<HomeBloc>(context).add(
                    GetArtists(
                        accessCode: BlocProvider.of<AccessCodeBloc>(context)
                            .state
                            .accessCode),
                  );
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                )),
          ),
        ],
      ),
    );
  }
}
