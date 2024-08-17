import 'package:flutter/material.dart';

const BottomNavigationSelected = Colors.white;
const BottomNavigationUnselected = Colors.grey;

const backgroundColor = Color.fromARGB(223, 0, 0, 0);

const appBarSelectedTheme = ButtonStyle(
  foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 3, 3, 3)),
  backgroundColor: WidgetStatePropertyAll(Colors.green),
);

const appBarUnselectedTheme = ButtonStyle(
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 35, 34, 34)));
