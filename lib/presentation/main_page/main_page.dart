import 'package:flutter/material.dart';
import 'package:spotify_clone/presentation/home/screen_home.dart';
import 'package:spotify_clone/presentation/main_page/widgets/bottom_navigation_bar_widget.dart';
import 'package:spotify_clone/presentation/search/screen_search.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final pages = [ScreenHome(), ScreenSearch()];
  @override
  Widget build(BuildContext context) {
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
  }
}
