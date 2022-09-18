import 'package:flutter/material.dart';
import 'package:netflix_app/screeens/widgets_common/common_poster.dart';
import 'common_title.dart';

class HomeScreenEachCategory extends StatelessWidget {
  final String title;
  const HomeScreenEachCategory({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeScreenTitleWidget(
            title: title,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * .6,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) {
                  return const HomeScreenPosterWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
