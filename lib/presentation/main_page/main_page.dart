import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/home/home_bloc.dart';
import 'package:spotify_clone/application/main/access_code_bloc.dart';
import 'package:spotify_clone/application/search/search_bloc.dart';
import 'package:spotify_clone/presentation/home/screen_home.dart';
import 'package:spotify_clone/presentation/main_page/widgets/bottom_navigation_bar_widget.dart';
import 'package:spotify_clone/presentation/main_page/widgets/mini_player_widget.dart';
import 'package:spotify_clone/presentation/main_page/widgets/screen_splash.dart';
import 'package:spotify_clone/presentation/search/screen_search.dart';
import 'package:spotify_clone/presentation/your_library/your_library.dart';

final random = Random();
const dummyImagePlayer =
    'https://i.scdn.co/image/ab67616d0000b2732514a547c5433aceb34ea84b';
const title = 'I Was Made For Lovin’ You - from The Fall Guy';
const artist = 'YUNGBLUD';
var audioDuration = 287917;
var color = Colors.accents[random.nextInt(Colors.accents.length)];

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final pages = [ScreenHome(), ScreenSearch(), ScreenYourLibrary()];
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AccessCodeBloc>(context)
          .add(const AccessCodeEvent.initialize());
    });

    return BlocBuilder<AccessCodeBloc, AccessCodeState>(
      builder: (context, state) {
        if (state.isError) {
          return const Center(
            child: Text('Check Your Connection'),
          );
        } else if (state.isLoading) {
          return const ScreenSplash();
        }
        return Scaffold(
          body: SafeArea(
              child: ValueListenableBuilder(
            valueListenable: bottomNaviListenable,
            builder: (context, value, child) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  pages[value],
                  // Positioned(
                  //   bottom: 70,
                  //   child: Container(
                  //     height: 70,
                  //     width: size.width - 30,
                  //     color: Color.fromARGB(
                  //         239, color.red, color.green, color.blue),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Padding(
                  //           padding:
                  //               const EdgeInsets.only(left: 8.0, right: 10),
                  //           child: Row(
                  //             children: [
                  //               Image.network(
                  //                 dummyImagePlayer,
                  //                 height: 50,
                  //               ),
                  //               const SizedBox(width: 10),
                  //               Column(
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: [
                  //                   Container(
                  //                     constraints:
                  //                         BoxConstraints(maxWidth: 220),
                  //                     child: Text(
                  //                       title,
                  //                       overflow: TextOverflow.ellipsis,
                  //                       maxLines: 1,
                  //                       style: TextStyle(
                  //                           color: const Color.fromARGB(
                  //                               239, 255, 255, 255),
                  //                           fontSize: 20,
                  //                           fontWeight: FontWeight.w700),
                  //                     ),
                  //                   ),
                  //                   Text(
                  //                     artist,
                  //                     overflow: TextOverflow.ellipsis,
                  //                     style: TextStyle(
                  //                       color: Colors.white,
                  //                       fontSize: 15,
                  //                       fontWeight: FontWeight.w600,
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Row(
                  //           children: [
                  //             IconButton(
                  //               onPressed: () {},
                  //               icon: Icon(
                  //                 Icons.play_arrow,
                  //                 color:
                  //                     const Color.fromARGB(184, 255, 255, 255),
                  //               ),
                  //             ),
                  //           ],
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: MiniPlayerWidget(
                      title: title,
                      artists: artist,
                      imageUrl: dummyImagePlayer,
                      audioDuration: audioDuration,
                      color: Colors.primaries[8],
                    ),
                  ),
                  BottomNavigationBarWidget()
                ],
              );
            },
          )),
        );
      },
    );
  }
}
