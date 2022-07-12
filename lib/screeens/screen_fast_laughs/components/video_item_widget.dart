import 'package:flutter/material.dart';

class FastLaughVideoItem extends StatelessWidget {
  const FastLaughVideoItem({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'LUDO',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
              ),
              Container(
                color: Colors.black,
                child: const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    '16+',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.volume_mute_outlined),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 18.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(
                          'https://www.'
                          'themoviedb.org/t/p/w220_and_h330_face/h5hVeCfYSb8gIO0F4'
                          '1gqidtb0AI.jpg',
                        ),
                      ),
                    ),
                    FastLaughVideoActions(
                      title: 'LOL',
                      icon: Icons.emoji_emotions_outlined,
                    ),
                    FastLaughVideoActions(
                      title: 'My List',
                      icon: Icons.add,
                    ),
                    FastLaughVideoActions(
                      title: 'Share',
                      icon: Icons.share,
                    ),
                    FastLaughVideoActions(
                      title: 'Play',
                      icon: Icons.play_circle_filled_outlined,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FastLaughVideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const FastLaughVideoActions(
      {Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              size: 30,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
