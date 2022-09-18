import 'package:flutter/cupertino.dart';
import 'package:netflix_app/screeens/widgets_common/poster_with_number.dart';
import 'common_title.dart';

class HomeScreenPosterWithNumber extends StatelessWidget {
  const HomeScreenPosterWithNumber({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeScreenTitleWidget(title: 'Top 10 Movies'),
          const SizedBox(
            height: 10,
          ),
          LimitedBox(
            maxHeight: MediaQuery.of(context).size.width * .6,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => PosterWithNumberWidget(
                  index: index,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
