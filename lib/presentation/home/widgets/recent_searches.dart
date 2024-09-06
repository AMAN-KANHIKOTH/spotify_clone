import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/home/home_bloc.dart';
import 'package:spotify_clone/application/main/access_code_bloc.dart';

class RecentSearches extends StatelessWidget {
  const RecentSearches({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        BlocProvider.of<HomeBloc>(context).add(HomeEvent.getFakeHistory(
            accessCode:
                BlocProvider.of<AccessCodeBloc>(context).state.accessCode));
      },
    );
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isloading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.isError) {
          return const Center(
            child: Text('Check Your Internet Connection'),
          );
        }
        return GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 10,
          ),
          childAspectRatio: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(
            state.fakeHis.length,
            (index) {
              final item = state.fakeHis[index];
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 34, 30, 30),
                ),
                child: Row(
                  children: [
                    Container(
                      height: double.maxFinite,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                          image: DecorationImage(
                              image: NetworkImage(item.images![0].url!))),
                      // child: Image.network(
                      //   item.images![0].url!,
                      //   fit: BoxFit.contain,
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        item.name ?? 'Unknown',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
