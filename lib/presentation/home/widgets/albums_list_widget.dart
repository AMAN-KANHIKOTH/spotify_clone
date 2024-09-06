import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/home/home_bloc.dart';
import 'package:spotify_clone/application/main/access_code_bloc.dart';

class AlbumsListWidget extends StatelessWidget {
  final String title;
  const AlbumsListWidget({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        BlocProvider.of<HomeBloc>(context).add(HomeEvent.getAlbums(
            accessCode:
                BlocProvider.of<AccessCodeBloc>(context).state.accessCode));
      },
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 260,
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isError) {
                return const Center(
                  child: Text('Check Your Internet Connection'),
                );
              } else if (state.isloading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(state.albumList.length, (index) {
                  String description = '${state.albumList[index].albumType}   ';
                  for (var element in state.albumList[index].artists!) {
                    if (element != state.albumList[index].artists!.last) {
                      description += '${element.name},';
                    } else {
                      description += element.name!;
                    }
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SizedBox(
                      width: 160,
                      child: Column(
                        children: [
                          Image.network(
                            state.albumList[index].images![0].url!,
                            fit: BoxFit.fill,
                            width: 160,
                            height: 160,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            state.albumList[index].name ?? 'Unknown',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              );
            },
          ),
        )
      ],
    );
  }
}
