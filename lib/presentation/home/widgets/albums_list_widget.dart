import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/home/bloc/home_bloc.dart';

class AlbumsListWidget extends StatelessWidget {
  final String title;
  const AlbumsListWidget({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: size.height * 0.235,
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              //log(state.artistsList[0].images![1].url.toString());
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  state.artistsList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Image.network(
                          state.artistsList[index].images![0].url!,
                          fit: BoxFit.fill,
                          width: 160,
                          height: 160,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          state.artistsList[index].name ?? 'Unknown',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'data',
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
