import 'package:flutter/material.dart';
import 'package:netflix_app/screeens/download_screen/download_screen.dart';
import 'package:netflix_app/screeens/home_screen/home_screen.dart';
import 'package:netflix_app/screeens/hot_and_new_screen/screen_hot_new.dart';
import 'package:netflix_app/screeens/main_screen/widgets/bottom_nav.dart';
import 'package:netflix_app/screeens/screen_fast_laughs/screen_fast_laughs.dart';
import 'package:netflix_app/screeens/search_screen/search_screen.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({Key? key}) : super(key: key);
  final _pages = const [
    ScreenHome(),
    ScreenHotAndNew(),
    ScreenFastLaughs(),
    ScreenSearch(),
    ScreenDownload(),
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, int index, child) {
        return Scaffold(
          body: SafeArea(
            child: _pages[index],
          ),
          bottomNavigationBar: BottomNavigationWidget(),
        );
      },
      valueListenable: navigationIndexNotifier,
    );
  }
}
