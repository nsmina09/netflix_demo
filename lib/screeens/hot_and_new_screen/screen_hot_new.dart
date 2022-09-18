import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/screeens/hot_and_new_screen/components/coming_soon.dart';
import 'package:netflix_app/screeens/hot_and_new_screen/components/everyones_watching.dart';
import 'package:netflix_app/screeens/widgets_common/app_bar_for_dwnld_and_hotandnew.dart';

class ScreenHotAndNew extends StatelessWidget {
  const ScreenHotAndNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBArWidget(
              title: 'Hot & New',
            ),
          ),
          body: Column(
            children: [
              TabBar(
                labelPadding: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(10),
                unselectedLabelColor: Colors.white,
                labelStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
                labelColor: Colors.black,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(30),
                ),
                tabs: const [
                  Text('🍿 Coming soon'),
                  Text("👀 Everyone's watching"),
                ],
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    ComingSoon(),
                    EveryOnesWatching(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
