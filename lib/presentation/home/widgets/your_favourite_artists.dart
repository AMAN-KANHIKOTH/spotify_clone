import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/home/home_bloc.dart';

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
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  state.artistsList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          minRadius: 80,
                          backgroundImage: NetworkImage(
                              state.artistsList[index].images![0].url!),
                          // child: Image.network(
                          //   fit: BoxFit.scaleDown,
                          //   state.artistsList[index].images![0].url!,
                          //   width: 160,
                          // ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          state.artistsList[index].name ?? 'Unknown',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
