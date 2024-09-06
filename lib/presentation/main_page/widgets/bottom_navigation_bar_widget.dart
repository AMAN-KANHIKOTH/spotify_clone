import 'package:flutter/material.dart';
import 'package:spotify_clone/core/constants.dart';

final bottomNaviListenable = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  BottomNavigationBarWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bottomNaviListenable,
      builder: (context, value, child) => BottomNavigationBar(
        currentIndex: bottomNaviListenable.value,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          bottomNaviListenable.value = value;
        },
        backgroundColor: const Color.fromARGB(229, 0, 0, 0),
        items: const [
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 12),
                child: Icon(Icons.home),
              ),
              label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), label: 'Your Library'),
        ],
        selectedItemColor: BottomNavigationSelected,
        unselectedItemColor: BottomNavigationUnselected,
      ),
    );
  }
}
