import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/access_code/bloc/access_code_bloc.dart';
import 'package:spotify_clone/presentation/home/screen_home.dart';
import 'package:spotify_clone/presentation/main_page/widgets/bottom_navigation_bar_widget.dart';
import 'package:spotify_clone/presentation/main_page/widgets/screen_splash.dart';
import 'package:spotify_clone/presentation/search/screen_search.dart';
import 'package:spotify_clone/presentation/your_library/your_library.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final pages = [ScreenHome(), ScreenSearch(), ScreenYourLibrary()];
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AccessCodeBloc>(context)
          .add(const AccessCodeEvent.refreshCode());
      Timer.periodic(
        const Duration(hours: 1),
        (timer) => refreshAccessCodeAfterAnHour(context),
      );
    });

    return BlocBuilder<AccessCodeBloc, AccessCodeState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const ScreenSplash();
        } else if (state.isError) {
          return const Center(
            child: Text('Check Your Connection'),
          );
        }
        return Scaffold(
          body: SafeArea(
              child: ValueListenableBuilder(
            valueListenable: bottomNaviListenable,
            builder: (context, value, child) {
              return pages[value];
            },
          )),
          bottomNavigationBar: BottomNavigationBarWidget(),
        );
      },
    );
  }
}

refreshAccessCodeAfterAnHour(BuildContext context) async {
  BlocProvider.of<AccessCodeBloc>(context)
      .add(const AccessCodeEvent.refreshCode());
}
