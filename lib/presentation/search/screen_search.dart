import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/access_code/access_code_bloc.dart';
import 'package:spotify_clone/application/search/search_bloc.dart';
import 'package:spotify_clone/presentation/search/widgets/app_bar_widget.dart';
import 'package:spotify_clone/presentation/search/widgets/browse_all_widget.dart';
import 'package:spotify_clone/presentation/search/widgets/start_browsing_widget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        BlocProvider.of<SearchBloc>(context).add(SearchEvent.initialise(
            BlocProvider.of<AccessCodeBloc>(context).state.accessCode));
      },
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: size,
        child: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 8.0, left: 10, top: 30, bottom: 20),
              child: CupertinoSearchTextField(
                placeholder: 'What do you want to listen to?',
                placeholderStyle: TextStyle(
                  color: Color.fromARGB(187, 19, 19, 19),
                  fontWeight: FontWeight.w600,
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.black,
                ),
              ),
            ),
            StartBrowsingWidget(),
            BrowseAllWidget(),
          ],
        ),
      ),
    );
  }
}
