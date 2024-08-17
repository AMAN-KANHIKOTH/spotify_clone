import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_clone/application/access_code/bloc/access_code_bloc.dart';
import 'package:spotify_clone/presentation/main_page/main_page.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AccessCodeBloc>(context)
          .add(const AccessCodeEvent.refreshCode());
    });

    return BlocBuilder<AccessCodeBloc, AccessCodeState>(
      builder: (context, state) {
        if (state.isError) {
          return const Center(child: Text('Check your Network Connection'));
        } else if (!state.isLoading) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => MainPage(),
          ));
        }
        return const Scaffold(
          body: Center(
            child: Text('Splash Screen'),
          ),
        );
      },
    );
  }
}
