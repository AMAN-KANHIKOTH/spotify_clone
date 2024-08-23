import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/search/search_bloc.dart';

class BrowseAllWidget extends StatelessWidget {
  const BrowseAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            child: Text(
              'Browse all',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                physics: const ScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 20,
                childAspectRatio: 1.8,
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                children: List.generate(
                  state.browseAllList.length,
                  (index) {
                    final random = Random();
                    final colorsList = [Colors.accents, Colors.primaries];
                    final item = state.browseAllList[index];
                    final name = item.keys.elementAt(0);
                    final data = item[name];
                    return Container(
                      height: 60,
                      padding: EdgeInsets.only(left: 14, top: 8),
                      decoration: BoxDecoration(
                        color: colorsList[random.nextInt(2)]
                            [random.nextInt(Colors.accents.length)],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              name,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                            width: 80,
                            child: Stack(
                              clipBehavior: Clip.hardEdge,
                              children: [
                                Positioned(
                                  top: 18,
                                  right: -27,
                                  child: Transform.rotate(
                                    angle: pi * 20 / 180,
                                    child: Container(
                                      height: 75,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  data![0].images![0].url!))),
                                      // child: Image.network(
                                      //   fit: BoxFit.fitWidth,
                                      //   'https://t.scdn.co/images/495fadcefe234607b14b2db3381f3f5d.jpeg',
                                      //   height: 70,
                                      // ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
