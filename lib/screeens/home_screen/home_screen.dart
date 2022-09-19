
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/screeens/widgets_common/category_widget.dart';
import 'package:netflix_app/screeens/widgets_common/list_with_num.dart';


ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        builder: (context, index, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    mainPosterWithButtons(context),
                    const HomeScreenEachCategory(
                      title: 'Trending Now',
                    ),
                    const HomeScreenEachCategory(
                      title: 'South Indian Cinemas',
                    ),
                    const HomeScreenPosterWithNumber(),
                    const HomeScreenEachCategory(
                        title: 'Top 10 TV Shows In India'),
                  ],
                ),
                scrollNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(milliseconds: 1500),
                        height: 100,
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'asset/images/netflix-logo-icon-3.jpg',
                                  width: 40,
                                  height: 40,
                                ),
                               const Spacer(),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.cast,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.blueAccent,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'asset/images/Netflix-avatar.png'),
                                      ),
                                    ),
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'TV Shows',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Movies',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          );
        },
        valueListenable: scrollNotifier,
      ),
    );
  }

  Stack mainPosterWithButtons(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.width * 1.4,
          decoration: const BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w220_and_h330_face/nj5HmHRZsrYQEYYXyAusFv35erP.jpg'),
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _iconTextButton(text: 'Add', icon: Icons.add),
                playButtonMain(),
                _iconTextButton(text: 'Info', icon: Icons.info),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton playButtonMain() {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () {},
      icon: const Icon(
        Icons.play_circle_filled_outlined,
        color: Colors.black,
      ),
      label: const Text(
        'Play',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }

  Column _iconTextButton({
    required String text,
    required IconData icon,
  }) {
    return Column(
      children: [
        Icon(icon),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
